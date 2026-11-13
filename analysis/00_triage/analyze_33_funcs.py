import pefile
import capstone
import struct

pe = pefile.PE(r"E:\Loggy3 analysis\latest.exe")
image_base = pe.OPTIONAL_HEADER.ImageBase
md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_32)

# IAT
iat = {}
if hasattr(pe, 'DIRECTORY_ENTRY_IMPORT'):
    for entry in pe.DIRECTORY_ENTRY_IMPORT:
        dll = entry.dll.decode('utf-8', errors='ignore')
        for imp in entry.imports:
            name = imp.name.decode('utf-8', errors='ignore') if imp.name else f"ord({imp.ordinal})"
            iat[imp.address] = f"{dll}!{name}"

# Strings
rdata_sec = None
for s in pe.sections:
    if s.Name.startswith(b'.rdata'):
        rdata_sec = s
        break

rdata_va = image_base + rdata_sec.VirtualAddress
rdata_raw = rdata_sec.get_data()

def resolve_str(va):
    if rdata_va <= va < rdata_va + len(rdata_raw):
        offset = va - rdata_va
        end = rdata_raw.find(b'\x00', offset)
        if end != -1 and (end - offset) < 250:
            try:
                s = rdata_raw[offset:end].decode('utf-8')
                if len(s) >= 2:
                    return repr(s)
            except:
                pass
    return None

funcs = [
    0x407220, 0x407300, 0x407510, 0x4077d0, 0x407990, 0x407b90,
    0x408070, 0x4081f0, 0x408250, 0x408410, 0x408cc0, 0x409190,
    0x409740, 0x40aec0, 0x40af80, 0x40b000, 0x40b040, 0x40b560,
    0x40b7d0, 0x40c800, 0x40c830, 0x40c860, 0x40c8f0, 0x40c9f0,
    0x40caa0, 0x40cb50, 0x40cc00, 0x40cca0, 0x40cd60, 0x40ce10,
    0x40ce50, 0x40cef0, 0x40cfa0
]

with open(r"E:\Loggy3 analysis\latest.exe", "rb") as f:
    raw = f.read()

for i, f_start in enumerate(funcs):
    f_end = funcs[i+1] if i+1 < len(funcs) else f_start + 0x500
    rva = f_start - image_base
    data = pe.get_data(rva, f_end - f_start)
    
    called_apis = []
    called_funcs = []
    strings_ref = []
    
    offset = 0
    while offset < len(data):
        curr_va = f_start + offset
        insns = list(md.disasm(data[offset:offset+16], curr_va, count=1))
        if not insns:
            offset += 1
            continue
        insn = insns[0]
        offset += insn.size
        
        # Check IAT calls
        for op in insn.op_str.split(','):
            op = op.strip()
            for addr, api in iat.items():
                if hex(addr) in op:
                    called_apis.append(api)
            if op.startswith('0x'):
                try:
                    val = int(op, 16)
                    s = resolve_str(val)
                    if s: strings_ref.append(s)
                except:
                    pass
        if insn.mnemonic == 'call':
            if insn.op_str.startswith('0x'):
                called_funcs.append(insn.op_str)
                
    print(f"=== Function {hex(f_start)} - {hex(f_end)} (size: {f_end - f_start} bytes) ===")
    if called_apis:
        print(f"  APIs: {set(called_apis)}")
    if strings_ref:
        print(f"  Strings: {set(strings_ref[:10])}")
    print(f"  Internal Calls ({len(called_funcs)}): {set(called_funcs[:10])}")

