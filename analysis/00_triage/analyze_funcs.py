import pefile
import capstone

pe = pefile.PE(r"E:\Loggy3 analysis\latest.exe")
image_base = pe.OPTIONAL_HEADER.ImageBase

md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_32)

def get_code(va, size):
    rva = va - image_base
    return pe.get_data(rva, size)

# Let's inspect function starts between 0x401000 and 0x40e000
# In x86, functions often start with:
# push ebp / mov ebp, esp or sub esp, N or push esi / push edi / push ebx

# Let's disassemble from 0x401000 to 0x40d000 and identify functions
code = get_code(0x401000, 0xd000)
insns = list(md.disasm(code, 0x401000))

print(f"Total instructions disassembled in 0x401000-0x40e000: {len(insns)}")

# Let's look for calls to imported APIs or notable addresses
api_calls = {}
for i in insns:
    if i.mnemonic in ('call', 'jmp'):
        target = i.op_str
        # Check if target is a known VA or memory ref
        if target.startswith('0x'):
            t_va = int(target, 16)
            # is it in IAT?
            pass

# Let's list all function boundaries in this range
# In MSVC/Rust, functions are often aligned to 16 bytes (padding with int3/nop)
funcs = []
prev_is_ret = True
for i in insns:
    if prev_is_ret and i.mnemonic not in ('nop', 'int3'):
        funcs.append(i.address)
        prev_is_ret = False
    elif i.mnemonic in ('ret', 'retf', 'jmp') and not (i.mnemonic == 'jmp' and i.op_str.startswith('0x') and int(i.op_str, 16) > i.address and int(i.op_str, 16) < i.address + 0x100):
        # Could be end of function
        # But wait, jmp could be inside function. ret is definitely end of function block.
        if i.mnemonic.startswith('ret'):
            prev_is_ret = True

print(f"Detected potential function entry candidates: {len(funcs)}")
for f in funcs[:30]:
    print(f"  Func candidate: {hex(f)}")

