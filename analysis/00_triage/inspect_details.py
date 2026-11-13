import re

with open(r"E:\Loggy3 analysis\latest.exe", "rb") as f:
    data = f.read()

# PDB
pdb_matches = re.findall(rb'([a-zA-Z0-9_\-\.\:\/\\]+\.pdb)', data)
print("PDB matches:", set([p.decode('latin-1') for p in pdb_matches]))

# Find all JSON occurrences
schema_pattern = b'"$schema": "https://schema.tauri.app'
idx = 0
while True:
    pos = data.find(schema_pattern, idx)
    if pos == -1:
        break
    # backtrack to opening brace
    start = data.rfind(b'{', 0, pos)
    count = 0
    end = start
    while end < len(data):
        b = data[end:end+1]
        if b == b'{':
            count += 1
        elif b == b'}':
            count -= 1
            if count == 0:
                end += 1
                break
        end += 1
    config_str = data[start:end].decode('utf-8', errors='ignore')
    print("=== TAURI CONFIG FOUND ===")
    print(config_str)
    with open(r"E:\Loggy3 analysis\analysis\artifacts\tauri_base_config.json", "w", encoding="utf-8") as out_f:
        out_f.write(config_str)
    idx = end

# Also search for windows config
win_idx = data.find(b'the embedded Windows configuration is invalid')
if win_idx != -1:
    # Look around win_idx
    window_data = data[win_idx-1500:win_idx+500]
    print("=== WINDOWS CONFIG CONTEXT ===")
    print(window_data.decode('utf-8', errors='ignore'))

