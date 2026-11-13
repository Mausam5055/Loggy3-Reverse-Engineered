import pefile
import capstone

pe = pefile.PE(r"E:\Loggy3 analysis\latest.exe")
image_base = pe.OPTIONAL_HEADER.ImageBase
md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_32)

with open(r"E:\Loggy3 analysis\latest.exe", "rb") as f:
    raw = f.read()

targets = [
    (0x407990, "ui_show_error"),
    (0x407b90, "installer_execute_and_wait"),
    (0x408250, "verify_authenticode_signature"),
    (0x408410, "download_and_verify_payload"),
    (0x408cc0, "write_temp_installer"),
    (0x409190, "verify_minisign_signature"),
    (0x409740, "check_architecture_and_pe_header"),
    (0x40b040, "download_http_stream"),
    (0x40b560, "parse_release_manifest"),
]

for t_va, name in targets:
    # search for near call to t_va: E8 xx xx xx xx
    callers = []
    for s_va in range(0x401000, 0x415000):
        rva = s_va - image_base
        b = pe.get_data(rva, 5)
        if b and b[0] == 0xe8:
            rel = int.from_bytes(b[1:5], 'little', signed=True)
            dest = s_va + 5 + rel
            if dest == t_va:
                callers.append(s_va)
    callers_str = ", ".join([hex(c) for c in callers]) if callers else "None"
    print(f"Target {name} ({hex(t_va)}) called from: {callers_str}")

