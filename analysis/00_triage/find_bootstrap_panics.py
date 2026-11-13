import pefile
import capstone
import struct

pe = pefile.PE(r"E:\Loggy3 analysis\latest.exe")
image_base = pe.OPTIONAL_HEADER.ImageBase

with open(r"E:\Loggy3 analysis\latest.exe", "rb") as f:
    raw = f.read()

# Let's find where the string "gui/src-tauri/src/bin/loggy3-bootstrap.rs" is located
src_str = b"gui/src-tauri/src/bin/loggy3-bootstrap.rs"
pos = raw.find(src_str)
print(f"Source string offset: {hex(pos)}")
src_rva = pe.get_rva_from_offset(pos)
src_va = image_base + src_rva
print(f"Source string VA: {hex(src_va)}, length: {len(src_str)} ({hex(len(src_str))})")

# In Rust, panic locations are represented as a struct:
# struct Location { file: &'static str (ptr, len), line: u32, col: u32 }
# On 32-bit: ptr (4 bytes), len (4 bytes), line (4 bytes), col (4 bytes) = 16 bytes!
ptr_bytes = struct.pack("<I", src_va)
len_bytes = struct.pack("<I", len(src_str))

loc_pattern = ptr_bytes + len_bytes
print(f"Looking for panic location struct: {loc_pattern.hex()}")
idx = 0
panics = []
while True:
    p = raw.find(loc_pattern, idx)
    if p == -1: break
    # Read line and col
    line, col = struct.unpack_from("<II", raw, p + 8)
    loc_va = image_base + pe.get_rva_from_offset(p)
    panics.append((p, loc_va, line, col))
    idx = p + 1

print(f"Found {len(panics)} panic locations from loggy3-bootstrap.rs:")
for p, lva, line, col in panics:
    print(f"  Panic loc VA: {hex(lva)} -> line {line}, col {col}")

# Now find xrefs to these panic location VAs!
print("\n=== XREFS TO PANIC LOCATIONS (identifying functions in loggy3-bootstrap) ===")
func_call_sites = []
for p, lva, line, col in panics:
    lva_bytes = struct.pack("<I", lva)
    idx = 0
    while True:
        xp = raw.find(lva_bytes, idx)
        if xp == -1: break
        xrva = pe.get_rva_from_offset(xp)
        xva = image_base + xrva
        # Check if in .text section
        if 0x401000 <= xva < 0x5e2000:
            func_call_sites.append((xva, line, col, lva))
            print(f"  Code at {hex(xva)} references panic at line {line}:{col}")
        idx = xp + 1

