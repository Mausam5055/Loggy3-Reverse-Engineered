with open(r"E:\Loggy3 analysis\analysis\00_triage\disasm_ui_and_exec.asm", "r", encoding="utf-8") as f:
    lines = f.readlines()

def print_around(target_str, context=25):
    for i, line in enumerate(lines):
        if target_str in line:
            start = max(0, i - context)
            end = min(len(lines), i + context)
            print(f"=== Context around {target_str} ===")
            for j in range(start, end):
                print(lines[j].strip())

print_around("0x407abc")
print_around("0x407c3d")

