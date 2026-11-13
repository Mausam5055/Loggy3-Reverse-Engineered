import pefile

pe = pefile.PE(r"E:\Loggy3 analysis\latest.exe")
iat = {}
if hasattr(pe, 'DIRECTORY_ENTRY_IMPORT'):
    for entry in pe.DIRECTORY_ENTRY_IMPORT:
        dll = entry.dll.decode('utf-8', errors='ignore')
        for imp in entry.imports:
            name = imp.name.decode('utf-8', errors='ignore') if imp.name else f"ord({imp.ordinal})"
            iat[imp.address] = f"{dll}!{name}"

print(f"Total IAT entries: {len(iat)}")

# Search for any calls or references to these IAT addresses in our disassembled file
with open(r"E:\Loggy3 analysis\analysis\00_triage\bootstrap_logic_annotated.asm", "r", encoding="utf-8") as f:
    lines = f.readlines()

found_calls = []
for idx, line in enumerate(lines):
    for addr, api in iat.items():
        addr_hex = f"0x{addr:x}"
        if addr_hex in line:
            found_calls.append((line.strip(), api))

print(f"Found {len(found_calls)} IAT references in 0x408000 - 0x40c500:")
for l, api in found_calls:
    print(f"  {l}  -->  {api}")

