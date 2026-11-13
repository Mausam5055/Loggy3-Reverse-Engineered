import pefile
import capstone
import struct

pe = pefile.PE(r"E:\Loggy3 analysis\latest.exe")
image_base = pe.OPTIONAL_HEADER.ImageBase

# Robust disassembler that skips invalid bytes if any
md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_32)

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

def disasm_block(start_va, num_bytes):
    rva = start_va - image_base
    data = pe.get_data(rva, num_bytes)
    offset = 0
    lines = []
    while offset < len(data):
        curr_va = start_va + offset
        insns = list(md.disasm(data[offset:offset+16], curr_va, count=1))
        if not insns:
            offset += 1
            continue
        insn = insns[0]
        offset += insn.size
        annot = ""
        # Look for constants or calls
        for op in insn.op_str.split(','):
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
        lines.append(f"0x{insn.address:06x}:  {insn.mnemonic:<8} {insn.op_str:<32}{annot}")
    return lines

# Let's disassemble the exact range from 0x408000 to 0x40c500
lines = disasm_block(0x408000, 0x4500)
with open(r"E:\Loggy3 analysis\analysis\00_triage\bootstrap_logic_annotated.asm", "w", encoding="utf-8") as f:
    f.write("\n".join(lines))

print(f"Disassembled {len(lines)} instructions between 0x408000 and 0x40c500.")

