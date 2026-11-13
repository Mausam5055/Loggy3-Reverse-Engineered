import pefile
import capstone

pe = pefile.PE(r"E:\Loggy3 analysis\latest.exe")
image_base = pe.OPTIONAL_HEADER.ImageBase
entry_point = pe.OPTIONAL_HEADER.AddressOfEntryPoint
entry_va = image_base + entry_point

print(f"ImageBase: {hex(image_base)}")
print(f"EntryPoint VA: {hex(entry_va)}")

md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_32)

def get_bytes_at_va(va, size):
    rva = va - image_base
    return pe.get_data(rva, size)

print("\n--- Disassembly at EntryPoint ---")
code = get_bytes_at_va(entry_va, 128)
for i in md.disasm(code, entry_va):
    print(f"0x{i.address:x}: {i.mnemonic} {i.op_str}")

# Search for references to strings in .rdata, specifically the error strings from loggy3-bootstrap.rs!
# Let's find addresses of bootstrap strings in the binary.
with open(r"E:\Loggy3 analysis\latest.exe", "rb") as f:
    raw = f.read()

target_str = b"could not download the release manifest"
pos = raw.find(target_str)
if pos != -1:
    rva = pe.get_rva_from_offset(pos)
    va = image_base + rva
    print(f"\nTarget string '{target_str.decode()}' at file offset {hex(pos)}, RVA {hex(rva)}, VA {hex(va)}")
    # Find xrefs to this VA
    va_bytes = va.to_bytes(4, 'little')
    xrefs = []
    idx = 0
    while True:
        p = raw.find(va_bytes, idx)
        if p == -1: break
        xrva = pe.get_rva_from_offset(p)
        xva = image_base + xrva
        xrefs.append((p, xrva, xva))
        idx = p + 1
    print(f"Xrefs to string VA {hex(va)}: {len(xrefs)}")
    for p, xrva, xva in xrefs:
        print(f"  Offset: {hex(p)}, RVA: {hex(xrva)}, VA: {hex(xva)}")

