with open(r"E:\Loggy3 analysis\analysis\00_triage\bootstrap_logic_annotated.asm", "r", encoding="utf-8") as f:
    lines = f.readlines()

print("=== CALLS TO APIS AND NOTABLE TARGETS ===")
for line in lines:
    if "call" in line or "MessageBox" in line or "ShellExecute" in line or "WinVerify" in line:
        for keyword in ["MessageBox", "ShellExecute", "WinVerify", "IsWow64", "0x5e3", "0x5e4", "LoadLibrary", "GetProcAddress"]:
            if keyword in line:
                print(line.strip())
                break

