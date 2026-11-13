import pefile
import capstone

pe = pefile.PE(r"E:\Loggy3 analysis\latest.exe")
image_base = pe.OPTIONAL_HEADER.ImageBase
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

rva = 0x412e90 - image_base
data = pe.get_data(rva, 0x150)
for i in md.disasm(data, 0x412e90):
    annot = ""
    for op in i.op_str.split(','):
        op = op.strip()
        if op.startswith('0x'):
            try:
                val = int(op, 16)
                s = resolve_str(val)
                if s: annot = f" ; {s}"
            except: pass
    print(f"0x{i.address:06x}:  {i.mnemonic:<8} {i.op_str:<32}{annot}")

