import pefile
import capstone

pe = pefile.PE(r"E:\Loggy3 analysis\latest.exe")
image_base = pe.OPTIONAL_HEADER.ImageBase
md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_32)

def disasm_func(va, max_insns=60):
    rva = va - image_base
    data = pe.get_data(rva, max_insns * 15)
    print(f"\n=== Function at {hex(va)} ===")
    count = 0
    for i in md.disasm(data, va):
        print(f"  0x{i.address:x}: {i.mnemonic:<8} {i.op_str}")
        count += 1
        if i.mnemonic == 'ret' or count >= max_insns:
            break

disasm_func(0x5d4220)

