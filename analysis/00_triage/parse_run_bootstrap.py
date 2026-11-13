with open(r"E:\Loggy3 analysis\analysis\00_triage\disasm_run_bootstrap.asm", "r", encoding="utf-8") as f:
    lines = f.readlines()

print("=== RUN_BOOTSTRAP STRUCTURE AND CALLS ===")
for i, line in enumerate(lines):
    if "call" in line or ";" in line:
        print(f"{i:4d}: {line.strip()}")

