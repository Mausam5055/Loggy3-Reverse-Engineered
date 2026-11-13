import pefile
import capstone

pe = pefile.PE(r"E:\Loggy3 analysis\latest.exe")
image_base = pe.OPTIONAL_HEADER.ImageBase

md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_32)

# Read .rdata for resolving string references
rdata_sec = None
for s in pe.sections:
    if s.Name.startswith(b'.rdata'):
        rdata_sec = s
        break

rdata_va = image_base + rdata_sec.VirtualAddress
rdata_data = rdata_sec.get_data()

def get_string_at(va):
    if rdata_va <= va < rdata_va + len(rdata_data):
        offset = va - rdata_va
        # Find null terminator or end
        end = rdata_data.find(b'\x00', offset)
        if end != -1 and end - offset < 200:
            try:
                s = rdata_data[offset:end].decode('utf-8')
                if len(s) >= 3:
                    return f'"{s}"'
            except:
                pass
    return None

# Find function start by scanning backward from an address for typical function prologue
def find_func_start(addr):
    curr = addr
    for _ in range(4096):
        curr -= 1
        rva = curr - image_base
        b = pe.get_data(rva, 3)
        # Check for standard prologues:
        # push ebp / mov ebp, esp -> 55 8b ec
        # sub esp, N -> 81 ec / 83 ec
        # Also previous byte is ret (c3, c2 xx xx) or cc / 90
        prev_rva = (curr - 1) - image_base
        prev_b = pe.get_data(prev_rva, 1)
        if prev_b in (b'\xcc', b'\xc3', b'\x90'):
            if b.startswith(b'\x55\x8b\xec') or b.startswith(b'\x83\xec') or b.startswith(b'\x81\xec') or b.startswith(b'\x53') or b.startswith(b'\x56') or b.startswith(b'\x57'):
                return curr
    return addr

# Let's inspect each critical address
key_addrs = [
    0x408542, # installer url / checksum / temp installer
    0x4092ce, # updater pubkey / signature
    0x409819, # verify PE / arch
    0x409aa0, # updater endpoint / trusted endpoint check
    0x40a397, # download release manifest / JSON parse
    0x40acdb, # parse release manifest version / updater signature
]

print("Scanning for function starts...")
discovered_funcs = set()
for a in key_addrs:
    fstart = find_func_start(a)
    discovered_funcs.add(fstart)
    print(f"Key addr {hex(a)} -> Func start {hex(fstart)}")


