# Static Malware Analysis & Reverse Engineering Report: `logi3.exe` (`latest.exe`)

> **Target Executable:** `latest.exe` (User reference: `logi3.exe`)  
> **Original Project Name:** `loggy3-bootstrap.exe` (PDB: `loggy3_bootstrap.pdb`)  
> **Target SHA-256:** `70e882677be96220f22e42fa3879f5aed13d84f56ad348a74e9b5855697d6fe0`  
> **Analysis Type:** 100% Non-Execution Static Reverse Engineering  
> **Analyst Role:** Senior Reverse Engineer & Malware Analyst  

---

## 1. Executive Summary

A comprehensive, non-execution static reverse engineering analysis was performed on the Windows executable `latest.exe` (provided as `logi3.exe`). The sample was analyzed strictly through disassembly, decompilation, PE structure parsing, cryptographic artifact extraction, and code flow reconstruction.

### What It Is
The sample is a **32-bit x86 Windows GUI bootstrapper and downloader launcher** compiled in **Rust** (rustc commit `8bab26f4f68e0e26f0bb7960be334d5b520ea452`, Nov 12, 2026) using the Tauri framework (`gui/src-tauri/src/bin/loggy3-bootstrap.rs`). It acts as a lightweight stager for the **Loggy3 recorder suite** (identifier: `com.loggy3.recorder`).

### What It Does
When executed, the program runs silently without a console window. It connects over HTTPS to `https://loggy3.com/windows/latest.json`, downloads a signed release manifest, streams down the production installer executable (`Loggy3-setup.exe`), validates three independent layers of cryptographic integrity (SHA-256 checksum, Minisign Ed25519 signature, and Microsoft Authenticode digital certificate), verifies PE architecture compatibility, writes the installer to `%TEMP%`, and launches it via `ShellExecuteExW`. If any check fails, it alerts the user via a native `MessageBoxW` dialog and terminates.

### Risk Verdict
**SUSPICIOUS / POTENTIALLY UNWANTED APPLICATION (PUA) — BRAND CONFUSION / TYPOSQUATTING**
* **Technical Exploit/Malware Danger:** **Low** (The bootstrap launcher contains no exploit code, rootkit, keylogger, or ransomware payload; it enforces rigorous cryptographic verification).
* **Identity & Social Engineering Danger:** **Medium-to-High** (The file name `logi3.exe` and product name `Loggy3` visually and phonetically mimic Logitech's official **"Logi"** brand. However, the binary is published and signed by a third-party entity **"Loggy3 LLC"** created in November 2026, **NOT Logitech Inc.**).

---

## 2. Top 5 Analytical Findings

1. **Brand Impersonation / Logitech Squatting:**
   The executable is branded as `Loggy3` with Company Name `loggy3`, distributed under names resembling Logitech's (`logi3.exe`). It has no legal or corporate affiliation with Logitech Europe S.A. or Logitech Inc.
2. **Valid Authenticode Digital Signature from SSL.com:**
   The file possesses a valid, unrevoked Windows Authenticode signature issued to **"Loggy3 LLC"** by *SSL.com Code Signing Intermediate CA RSA R1*, with a timestamp of November 12, 2026.
3. **Triple-Layer Cryptographic Verification Architecture:**
   Before running any downloaded file, the bootstrapper strictly verifies:
   * **SHA-256 Content Hash:** Matches manifest payload hash (`0x00408410`).
   * **Minisign Ed25519 Signature:** Validates signature using an embedded public key (`0x00409190`).
   * **Microsoft Authenticode Trust:** Invokes `wintrust.dll!WinVerifyTrust` (`0x00408250`) to verify the Windows digital certificate of the downloaded installer.
4. **Host CPU Architecture Cross-Verification:**
   Dynamically loads `kernel32.dll!IsWow64Process2` (`0x0040A01A`) to identify host system CPU architecture (x86, x64, or ARM64) and parses raw PE COFF headers of the downloaded installer to prevent launching incompatible payloads.
5. **Clean Local Footprint by the Bootstrapper:**
   The bootstrapper itself creates **no persistence mechanisms** (no Run keys, services, or scheduled tasks) and accesses no sensitive workstation data (no credential stores, keystroke hooks, or screen capture). It writes solely to `%TEMP%` and hands off execution to the child installer.

---

## 3. Master Index of Deliverables & Documentation

All deliverables have been generated in the project workspace:

### Detailed Analysis Reports (`/analysis/docs/`)
* [**`Working.md`**](file:///e:/Loggy3%20analysis/analysis/docs/Working.md) *(also in root [**`Working.md`**](file:///e:/Loggy3%20analysis/Working.md))*: In-depth, low-level walkthrough of how the binary works under the hood (PE mapping, memory structures, assembly routines, the 4-gate verification scheme, and process synchronization).
* [**`01_triage.md`**](file:///e:/Loggy3%20analysis/analysis/docs/01_triage.md): Complete hashes, PE section entropy, digital certificate chain analysis, brand verification, complete 154-API import table grouped by capability, resources, overlay extraction, and decoded strings.
* [**`02_architecture.md`**](file:///e:/Loggy3%20analysis/analysis/docs/02_architecture.md): Overall modular architecture, 5 Mermaid diagrams (component, execution flowchart, function call graph, data-flow, and network sequence), and Core Components table.
* [**`03_behavior.md`**](file:///e:/Loggy3%20analysis/analysis/docs/03_behavior.md): Comprehensive plain-English behavioral analysis of file system, registry, process creation, network traffic, crypto, data access, and host impact.
* [**`04_security.md`**](file:///e:/Loggy3%20analysis/analysis/docs/04_security.md): Threat classification, MITRE ATT&CK technique mapping table, code-level vulnerability review (CWEs), Indicators of Compromise (IOCs), and YARA detection rule.
* [**`05_recommendations.md`**](file:///e:/Loggy3%20analysis/analysis/docs/05_recommendations.md): Keep/quarantine/remove verdict, step-by-step PowerShell cleanup commands, hardening guidelines, and isolated VM dynamic analysis protocol.

### Decompiled Code & Function Mappings (`/analysis/decompilation/`)
* [**`INDEX.md`**](file:///e:/Loggy3%20analysis/analysis/decompilation/INDEX.md): Index of all 12 decompiled source modules.
* [**`rename_map.md`**](file:///e:/Loggy3%20analysis/analysis/decompilation/rename_map.md): Comprehensive mapping of virtual addresses to descriptive function names and confidence levels.
* [**`entrypoint.rs`**](file:///e:/Loggy3%20analysis/analysis/decompilation/entrypoint.rs): `0x005D4410` (PE entrypoint) & `0x005D4220` (CRT SEH startup).
* [**`bootstrap_main.rs`**](file:///e:/Loggy3%20analysis/analysis/decompilation/bootstrap_main.rs): `0x00412E90` (`main`) & `0x00409870` (`bootstrap_run` 16-step orchestrator).
* [**`config.rs`**](file:///e:/Loggy3%20analysis/analysis/decompilation/config.rs): `0x00409904` (Embedded base & Windows JSON config parser).
* [**`system_arch.rs`**](file:///e:/Loggy3%20analysis/analysis/decompilation/system_arch.rs): `0x0040A01A` (`IsWow64Process2` architecture detection & PE header validator).
* [**`network_downloader.rs`**](file:///e:/Loggy3%20analysis/analysis/decompilation/network_downloader.rs): `0x0040A40E` (HTTPS downloader, endpoint trust validation, streaming reader).
* [**`manifest_parser.rs`**](file:///e:/Loggy3%20analysis/analysis/decompilation/manifest_parser.rs): `0x0040B560` (Release manifest JSON deserializer).
* [**`crypto_verification.rs`**](file:///e:/Loggy3%20analysis/analysis/decompilation/crypto_verification.rs): `0x00408410` (SHA-256) & `0x00409190` (Minisign Ed25519 signature verifier).
* [**`disk_io.rs`**](file:///e:/Loggy3%20analysis/analysis/decompilation/disk_io.rs): `0x00408CC0` (Temporary file writer `%TEMP%\...-setup.exe`).
* [**`authenticode_validator.rs`**](file:///e:/Loggy3%20analysis/analysis/decompilation/authenticode_validator.rs): `0x00408250` (`WinVerifyTrust` Windows certificate validator).
* [**`process_execution.rs`**](file:///e:/Loggy3%20analysis/analysis/decompilation/process_execution.rs): `0x00407B90` (`ShellExecuteExW` installer launcher & synchronizer).
* [**`ui_dialogs.rs`**](file:///e:/Loggy3%20analysis/analysis/decompilation/ui_dialogs.rs): `0x00407990` (`MessageBoxW` modal error dialogs).
* [**`helpers.rs`**](file:///e:/Loggy3%20analysis/analysis/decompilation/helpers.rs): String encoding and memory allocation routines.

### Extracted Artifacts (`/analysis/artifacts/`)
* [**`signature.p7b`**](file:///e:/Loggy3%20analysis/analysis/artifacts/signature.p7b): Extracted 9,512-byte PKCS#7 digital signature blob.
* [**`tauri_base_config.json`**](file:///e:/Loggy3%20analysis/analysis/artifacts/tauri_base_config.json): Extracted embedded Tauri application configuration.
* [**`overlay.bin`**](file:///e:/Loggy3%20analysis/analysis/artifacts/overlay.bin): Extracted raw PE overlay.

---

## 4. Limitations and Unknowns

In adherence to strict reverse engineering methodology, the following boundaries and unresolved variables are explicitly documented:

1. **Downstream Payload Capabilities Unverified:**
   Because the target was strictly analyzed statically without host execution or outbound network transmission, the secondary payload (`Loggy3-setup.exe`) hosted at `https://loggy3.com` was not fetched or analyzed. The ultimate capabilities of the full Loggy3 platform (including its background kernel `loggy3-kernel.exe` and replay engine `replay_windows.exe`) remain unverified pending a separate static analysis of that installer.
2. **Live Server Status:**
   No network requests were initiated from this workstation to `loggy3.com`. Whether the server is active, responding, or currently serving live binaries was intentionally not probed to maintain operational security.
3. **Exact Build Environment & Git Revision:**
   The rustc commit hash `8bab26f4f68e0e26f0bb7960be334d5b520ea452` was recovered, along with developer build paths referencing `/Users/ryanhuang/`. However, the private Git commit hash of the proprietary repository `com.loggy3.recorder` is not stored within the binary strings.

