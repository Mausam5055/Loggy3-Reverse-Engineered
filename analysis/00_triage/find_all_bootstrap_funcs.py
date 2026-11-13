import pefile
import capstone

pe = pefile.PE(r"E:\Loggy3 analysis\latest.exe")
image_base = pe.OPTIONAL_HEADER.ImageBase
md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_32)

with open(r"E:\Loggy3 analysis\latest.exe", "rb") as f:
    raw = f.read()

# Let's find xrefs to 0x409801, 0x40b47c, etc.
# In find_bootstrap_panics, we had:
# Code at 0x409801 references panic at line 337:18
# Code at 0x409845 references panic at line 332:47
# Code at 0x409833 references panic at line 329:26
# Code at 0x40b47c references panic at line 222:43

# What function contains 0x40b47c?
# Let's disassemble from 0x40a000 to 0x40c000 and look at function headers
def get_func_start(addr):
    for i in range(addr, addr - 0x1000, -1):
        rva = i - image_base
        b = pe.get_data(rva, 4)
        prev = pe.get_data(rva - 1, 1)
        if prev in (b'\xcc', b'\xc3', b'\x90') and (b[0] == 0x55 or b.startswith(b'\x83\xec') or b.startswith(b'\x81\xec')):
            return i
    return None

f_b47c = get_func_start(0x40b47c)
f_9801 = get_func_start(0x409801)
print(f"Function containing 0x40b47c starts at: {hex(f_b47c)}")
print(f"Function containing 0x409801 starts at: {hex(f_9801)}")

# Let's find all function starts between 0x407000 and 0x40d000
funcs = set()
for va in range(0x407000, 0x40d000):
    rva = va - image_base
    prev = pe.get_data(rva - 1, 1)
    if prev in (b'\xcc', b'\xc3'):
        b = pe.get_data(rva, 4)
        if b[0] == 0x55 or b.startswith(b'\x83\xec') or b.startswith(b'\x81\xec') or b.startswith(b'\x53') or b.startswith(b'\x56') or b.startswith(b'\x57'):
            funcs.add(va)

print(f"\nFound {len(funcs)} functions in bootstrap range:")
for f in sorted(funcs):
    print(f"  Func at {hex(f)}")

