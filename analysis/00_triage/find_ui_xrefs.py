import pefile
import struct

pe = pefile.PE(r"E:\Loggy3 analysis\latest.exe")
image_base = pe.OPTIONAL_HEADER.ImageBase

with open(r"E:\Loggy3 analysis\latest.exe", "rb") as f:
    raw = f.read()

def find_xrefs(va, name):
    target = struct.pack("<I", va)
    idx = 0
    print(f"\n=== Xrefs to {name} ({hex(va)}) ===")
    while True:
        p = raw.find(target, idx)
        if p == -1: break
        rva = pe.get_rva_from_offset(p)
        xva = image_base + rva
        print(f"  Offset: {hex(p)}, RVA: {hex(rva)}, VA: {hex(xva)}")
        idx = p + 1

find_xrefs(0x652b98, "user32.dll!MessageBoxW")
find_xrefs(0x652ba0, "shell32.dll!ShellExecuteExW")
find_xrefs(0x652ba8, "wintrust.dll!WinVerifyTrust")

