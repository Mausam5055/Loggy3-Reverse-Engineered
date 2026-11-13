import pefile
import capstone
import struct

pe = pefile.PE(r"E:\Loggy3 analysis\latest.exe")
image_base = pe.OPTIONAL_HEADER.ImageBase

md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_32)

# Load rdata for string lookup
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

# Disassemble a range of instructions and annotate
def disassemble_range(start_va, end_va):
    rva = start_va - image_base
    size = end_va - start_va
    data = pe.get_data(rva, size)
    lines = []
    for i in md.disasm(data, start_va):
        annot = ""
        # Check if operand is an immediate matching an address in rdata
        for op in i.op_str.split(','):
            op = op.strip()
            if op.startswith('0x'):
                try:
                    val = int(op, 16)
                    s = resolve_str(val)
                    if s:
                        annot = f" ; {s}"
                        break
                except:
                    pass
        lines.append(f"0x{i.address:06x}:  {i.mnemonic:<8} {i.op_str:<30}{annot}")
    return lines

# Let's inspect 0x407000 to 0x40c000 in chunks
ranges_to_inspect = [
    (0x407500, 0x408500, "bootstrap_prep"),
    (0x408500, 0x409500, "installer_download_verify"),
    (0x409500, 0x40a500, "manifest_fetch_validate"),
    (0x40a500, 0x40b800, "main_entry_flow"),
    (0x40b800, 0x40d000, "runtime_spawner_execution")
]

for s, e, name in ranges_to_inspect:
    lines = disassemble_range(s, e)
    with open(rf"E:\Loggy3 analysis\analysis\00_triage\disasm_{name}.asm", "w", encoding="utf-8") as out:
        out.write("\n".join(lines))
    print(f"Dumped {name} (0x{s:x} - 0x{e:x}): {len(lines)} instructions")

