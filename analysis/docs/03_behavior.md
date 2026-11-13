# Behavioral Analysis: Loggy3 Bootstrap (`latest.exe`)

## 1. Executive Summary of Primary & Secondary Purposes

### Primary Purpose
`latest.exe` (internally `loggy3-bootstrap.exe`) is a **secure network bootstrapper and installer launcher** for the Loggy3 software ecosystem. Its single job is to contact the official update server (`loggy3.com`), retrieve the release manifest (`latest.json`), stream down the production installer (`Loggy3-setup.exe`), verify multiple layers of cryptographic signatures (Minisign Ed25519, SHA-256 content hash, and Microsoft Authenticode), write the payload into `%TEMP%`, and launch it via `ShellExecuteExW`.

### Secondary Functions
1. **Host CPU Compatibility Determination:** Identifies if the computer is 32-bit x86, 64-bit AMD64, or ARM64 via `IsWow64Process2` to ensure only compatible installer binaries are executed.
2. **Endpoint Trust Enforcement:** Restricts download targets exclusively to the official domain `loggy3.com`, actively blocking redirects or tampered configuration URLs.
3. **Modal Error Presentation:** Renders native GUI dialogs via `MessageBoxW` with human-readable error descriptions if network drops, verification fails, or signatures do not validate.

---

## 2. File System Activity

* **Files Read:** None from disk during normal execution. All configuration strings and public keys are embedded directly within `.rdata`.
* **Files Created & Written:**
  * Target Directory: `%LOCALAPPDATA%\Temp\` (or `%USERPROFILE%\AppData\Local\Temp\`).
  * Target File: `%TEMP%\[installer-filename]-setup.exe` (extracted from manifest URL).
  * Creation Flags: `CreateFileW(GENERIC_WRITE, exclusive, CREATE_ALWAYS, FILE_ATTRIBUTE_TEMPORARY)`.
* **Files Modified:** None.
* **Files Deleted:**
  * Deletes the temporary installer (`DeleteFileW`) if writing fails, disk runs out of space, or payload verification fails midway.
* **Shadow Copies / System Restore:** No tampering or deletion of volume shadow copies (`vssadmin`) or restore points.

---

## 3. Registry Activity

* **Keys Written / Modified:** **Zero registry writes.**
* **Keys Read:**
  * Reads Internet proxy configuration:
    `HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings`
    * `ProxyEnable` (DWORD)
    * `ProxyServer` (SZ)
    * Standard behavior of the Schannel / Reqwest networking layer to route traffic correctly if the host is behind an enterprise corporate proxy.
* **Run Keys / Auto-Start Entries:**
  * **No persistence entries** are added to `HKCU\Software\Microsoft\Windows\CurrentVersion\Run`, `HKLM\...\Run`, RunOnce, or Services.

---

## 4. Process Activity & Privilege Escalation

* **Process Injection:** **None.** No usage of `VirtualAllocEx`, `WriteProcessMemory`, `CreateRemoteThread`, `QueueUserAPC`, or process hollowing.
* **Privilege Escalation:** **None.**
  * Manifest execution level is set to `asInvoker`.
  * Does not call `AdjustTokenPrivileges`, `OpenProcessToken`, or exploit UAC bypass techniques.
* **Processes Spawned:**
  * Executes the downloaded installer:
    `ShellExecuteExW` with `lpFile = "%TEMP%\...-setup.exe"`, `fMask = SEE_MASK_NOCLOSEPROCESS`.
    If the downloaded installer requests administrative privileges via its own embedded manifest, Windows UAC will prompt the user at that point.
* **Processes Terminated:**
  * Does not terminate security software, AV agents, or system processes.
  * Terminates only itself after the child installer finishes via `TerminateProcess(GetCurrentProcess(), exitCode)`.

---

## 5. Persistence Mechanisms

* **Scheduled Tasks:** None created.
* **Windows Services:** None registered or modified.
* **Startup Folder / Run Keys:** None added.
* **WMI Event Subscriptions:** None created.
* **DLL Hijacking:** Statically links standard Windows core DLLs from System32 (`kernel32.dll`, `user32.dll`, `shell32.dll`, `wintrust.dll`, `advapi32.dll`, `ws2_32.dll`, `crypt32.dll`, `secur32.dll`, `ntdll.dll`).

---

## 6. Network Activity & Communications

### Remote Endpoints
* **Primary Manifest Endpoint:**
  `https://loggy3.com/windows/latest.json`
* **Installer Binary Distribution URL:**
  Resolved dynamically from `latest.json` (e.g., `https://loggy3.com/releases/Loggy3-v0.10.5-setup.exe`).
* **Transport Protocols:**
  HTTPS over TLS 1.3 / TLS 1.2 on Port 443 via Windows Schannel.
* **Certificate Validation:**
  Delegates TLS validation directly to the Windows CryptoAPI store (`crypt32.dll`). Revocation checks (`CertVerifyCertificateChainPolicy`) are enabled.
* **Telemetry / Data Exfiltration:**
  **No background telemetry, keystroke streaming, or system profiling beacons are transmitted.** Communication is strictly inbound download traffic.

---

## 7. Data Access & Privacy Footprint

| Data Category | Accessed by Bootstrapper? | Technical Evidence |
|---|---|---|
| **Credentials & Passwords** | **No** | No access to LSASS, SAM, Vault, DPAPI, or browser SQLite stores |
| **Keystrokes & Keylogging** | **No** | No `SetWindowsHookEx`, `GetAsyncKeyState`, or raw input device hooks |
| **Screenshots / Video** | **No** | No `BitBlt`, DirectX, or GDI screen capture calls |
| **Microphone & Webcam** | **No** | No Media Foundation, DirectShow, or audio capture APIs |
| **Browser Data & Cookies** | **No** | No access to Chrome/Edge/Firefox profile paths |
| **Files & Documents** | **No** | Only accesses `%TEMP%` to write its own downloaded setup binary |
| **System Profiling** | **Minimal / Benign** | Queries `IsWow64Process2` / `GetNativeSystemInfo` solely to identify CPU architecture (x86 vs x64 vs ARM64) |
| **USB Devices** | **No** | No device interface enumeration or HID hooks |

---

## 8. Cryptographic Implementations

The binary employs a defense-in-depth triple verification scheme:

1. **SHA-256 Hashing (`sha2` crate):**
   * Computes the cryptographic checksum over the downloaded payload buffer.
   * Compares against the `checksum` string provided in the signed release manifest.
2. **Minisign / Ed25519 (`ed25519-dalek` crate):**
   * Public Key hardcoded in `.rdata`:
     `dW50cnVzdGVkIGNvbW1lbnQ6IG1pbmlzaWduIHB1YmxpYyBrZXk6IEExRDg1NkQ1NjQ5ODU1OTIKUldTU1ZaaGsxVmJZb2Y4eng2d0xEUkd0dDh2R1lsdUZuTTRBa0NyMjQ0R2lTK0dvSHFCcUVCS24K`
   * Key ID: `A1D856D564985592`
   * Public Key (hex): `512495CE193555B6287FCCF3EB0B0D11ADB7CBC6625B859CCE00902AF6E381A2`
   * Ensures that only binaries digitally signed with the private key owned by the Loggy3 author can ever be accepted.
3. **Microsoft Authenticode (`wintrust.dll`):**
   * Uses `WinVerifyTrust` with `WINTRUST_ACTION_GENERIC_VERIFY_V2` (`{00AAC56B-CD44-11d0-8CC2-00C04FC295EE}`).
   * Verifies that the downloaded executable has a valid Windows code-signing certificate trusted by the local OS root store.

---

## 9. Evasion & Anti-Analysis Techniques

* **Anti-Debugging:**
  * Imports `IsDebuggerPresent`, standard for the Rust MSVC runtime panic backtrace collector. No active debugger detection loops, timing checks (`RDTSC`), or hardware breakpoint clearing (`GetThreadContext`).
* **Anti-VM / Sandbox Checks:**
  * **None.** Does not check for VMware, VirtualBox, QEMU, hypervisor CPUID bits, or human interaction (mouse movement).
* **Code / String Obfuscation:**
  * **None.** No packing, XOR encryption, or custom string decryptors. All diagnostic error strings ("the release manifest is not valid JSON", etc.) are stored in plain ASCII/UTF-8 in `.rdata`.
* **Dynamic API Resolution:**
  * Only dynamically loads `IsWow64Process2` via `GetProcAddress` on `kernel32.dll` to support older Windows versions where this API is absent.

---

## 10. Overall Laptop & System Impact

* **Resource Utilization:**
  * Memory: Approximately 15–30 MB during download streaming.
  * CPU: Negligible (< 1% single-core burst during SHA-256 and Ed25519 signature computation).
  * Disk Space: Only requires disk space proportional to the installer size in `%TEMP%`.
* **System State Changes:**
  * Temporary file written to `%TEMP%\...-setup.exe`.
  * The actual persistent system changes (such as application installation in `Program Files`, desktop shortcuts, and background recording services) will be enacted by the **child installer** once launched, rather than this bootstrap launcher.

