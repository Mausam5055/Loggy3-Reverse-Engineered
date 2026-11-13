# Static Analysis Report: Phase 1 - Triage & Static Metadata

## 1. File Identification & Cryptographic Hashes

| Property | Value | Notes |
|---|---|---|
| **File Name** | `latest.exe` (User referred to as `logi3.exe`) | Located in workspace `E:\Loggy3 analysis\` |
| **Original File Name** | `loggy3-bootstrap.exe` | Derived from PDB symbol path `loggy3_bootstrap.pdb` |
| **File Size** | `2,676,528` bytes (`2.55 MB`) | PE image + 9,520-byte Authenticode overlay |
| **File Type** | PE32 executable (GUI) Intel 80386 | Windows 32-bit Portable Executable |
| **MD5** | `fd74524c5748ea58c9422ec7f20413d3` | Verified |
| **SHA-1** | `3bb07c15bd8384b9a618fb4149092e55b6411f51` | Verified |
| **SHA-256** | `70e882677be96220f22e42fa3879f5aed13d84f56ad348a74e9b5855697d6fe0` | Verified |
| **Total File Entropy** | `6.4892` | Typical for statically-compiled Rust binaries with embedded resources |
| **Compile TimeDateStamp**| `1794509406` (`0x6AF60A5E`) | `2026-11-12 18:50:06 UTC` (Fresh build) |
| **Entry Point RVA** | `0x001D4410` | VA: `0x005D4410` (ImageBase: `0x00400000`) |
| **Subsystem** | `0x0002` (Windows GUI) | No console window shown by default |
| **Linker / Toolchain** | MSVC Linker (rustc `8bab26f4f68e0e26f0bb7960be334d5b520ea452`) | Cross-compiled on macOS (`/Users/ryanhuang/...`) |

---

## 2. Architecture, Subsystem & Section Entropy

### Headers & Security Characteristics
* **Machine:** `0x014C` (i386 / 32-bit x86).
* **DllCharacteristics (`0x8140`):**
  * `IMAGE_DLLCHARACTERISTICS_DYNAMIC_BASE` (ASLR enabled)
  * `IMAGE_DLLCHARACTERISTICS_NX_COMPAT` (Data Execution Prevention / DEP enabled)
  * `IMAGE_DLLCHARACTERISTICS_TERMINAL_SERVER_AWARE`
* **Packer / Protector Detection:** None detected. Sections exhibit normal distribution for native Rust binaries without commercial packers (no UPX, Themida, VMProtect).

### Section Breakdown
| Section | Virtual Address | Virtual Size | Raw Data Offset | Raw Data Size | Entropy | Characteristics | Analysis |
|---|---|---|---|---|---|---|---|
| `.text` | `0x00001000` | `0x001E1CD7` | `0x00000400` | `0x001E1E00` | `6.4518` | `0x60000020` (Code, Execute, Read) | Main code section containing runtime and bootstrap logic |
| `.rdata` | `0x001E3000` | `0x0008F3EC` | `0x001E2200` | `0x0008F400` | `5.4054` | `0x40000040` (Initialized Data, Read) | Read-only data, string constants, embedded Tauri configs, IAT |
| `.data` | `0x00273000` | `0x0000288C` | `0x00271600` | `0x00002200` | `3.0693` | `0xC0000040` (Initialized Data, Read, Write) | Global variables, CRT locks, TLS indices |
| `.fptable`| `0x00276000` | `0x00000080` | `0x00273800` | `0x00000200` | `0.0000` | `0xC0000040` (Initialized Data, Read, Write) | Floating point function pointer table (zeros) |
| `.tls` | `0x00277000` | `0x000000E9` | `0x00273A00` | `0x00000200` | `0.0926` | `0xC0000040` (Initialized Data, Read, Write) | Thread Local Storage directory |
| `.rsrc` | `0x00278000` | `0x00004FA8` | `0x00273C00` | `0x00005000` | `7.7616` | `0x40000040` (Initialized Data, Read) | Compressed icon groups, version information, manifest |
| `.reloc` | `0x0027D000` | `0x00012528` | `0x00278C00` | `0x00012600` | `6.5843` | `0x42000040` (Initialized Data, Discardable, Read)| Base relocations table |

---

## 3. Digital Signature Analysis (Authenticode)

A valid digital signature is appended in the file overlay at offset `0x0028B200` (length `9,520` bytes).

### Verification Details
* **Authenticode Status:** `Valid` (`Signature verified`)
* **Signature Type:** Authenticode PKCS#7 SignedData with RFC 3161 Timestamping
* **Digest Algorithm:** `SHA-256`
* **Signature Algorithm:** `RSASSA-PKCS1-v1_5` with RSA 4096-bit key

### Signer Certificate
* **Subject:** `CN=Loggy3 LLC, O=Loggy3 LLC, L=San Francisco, S=California, C=US`
* **Issuer:** `CN=SSL.com Code Signing Intermediate CA RSA R1, O=SSL Corp, L=Houston, S=Texas, C=US`
* **Serial Number:** `1E8F25153DF36F71C9404244397C26A5`
* **Valid From:** `2026-11-10 07:10:41 UTC`
* **Valid To:** `2027-11-10 07:10:41 UTC`
* **Thumbprint (SHA-1):** `506CAA977115F36EBC2A82078E45ACF4B358D596`

### Timestamping Authority
* **Timestamp Signer:** `CN=SSL.com Timestamping Unit 2026 E1, O=SSL Corp, L=Houston, S=Texas, C=US`
* **Timestamp Serial:** `5443F837BD5AEE18018472B85CDA8EE3`
* **Timestamp Date:** `2026-11-12 18:50:35 UTC`
* **Thumbprint (SHA-1):** `A36D86D3320769E6737653F05811887CF4D18D88`

---

## 4. Brand & Spoofing Evaluation: Logitech vs. Loggy3

The user's request explicitly asks:
> *"Does it claim to be Logitech software? Check whether the metadata, signature, and file path are consistent with a legitimate Logitech product or look spoofed."*

### Key Findings:
1. **Metadata Inspection:**
   * `CompanyName`: `loggy3`
   * `FileDescription`: `Loggy3`
   * `ProductName`: `Loggy3`
   * `FileVersion`: `0.10.5`
   * `ProductVersion`: `0.10.5`
   * `Internal Identifier`: `com.loggy3.recorder`
2. **Logitech Verification:**
   * Genuine Logitech products are legally published and signed by **"Logitech Inc."** or **"Logitech Europe S.A."**, using DigiCert or Sectigo certificates.
   * This executable is signed by **"Loggy3 LLC"** (issued Nov 10, 2026 by SSL.com).
   * The binary was compiled on a developer machine located at `/Users/ryanhuang/` on macOS.
3. **Typo-squatting / Brand Mimicry Assessment:**
   * The name `logi3.exe` or `Loggy3` visually mimics Logitech's software brand **"Logi"** (e.g., *Logi Options+*, *Logi Tune*, *Logitech G HUB*).
   * While the binary does not explicitly copy Logitech copyright notices, the name `logi3` is a clear phonetic and visual brand collision that could mislead end users into believing it is official Logitech hardware utility software.

---

## 5. Complete Import Table Grouped by Capability

The executable imports 154 functions across 10 system Dynamic Link Libraries.

### A. Network & Sockets (`ws2_32.dll`, `secur32.dll`, `crypt32.dll`)
* **ws2_32.dll (19 APIs):** `WSAStartup`, `WSACleanup`, `WSASocketW`, `WSASend`, `WSAIoctl`, `WSAGetLastError`, `bind`, `connect`, `getaddrinfo`, `freeaddrinfo`, `getpeername`, `getsockname`, `getsockopt`, `setsockopt`, `ioctlsocket`, `recv`, `send`, `shutdown`, `closesocket`.
* **secur32.dll (Schannel TLS - 10 APIs):** `AcquireCredentialsHandleA`, `FreeCredentialsHandle`, `InitializeSecurityContextW`, `AcceptSecurityContext`, `DeleteSecurityContext`, `EncryptMessage`, `DecryptMessage`, `QueryContextAttributesW`, `ApplyControlToken`, `FreeContextBuffer`.
* **crypt32.dll (11 APIs):** `CertOpenStore`, `CertCloseStore`, `CertAddCertificateContextToStore`, `CertEnumCertificatesInStore`, `CertDuplicateStore`, `CertDuplicateCertificateContext`, `CertFreeCertificateContext`, `CertGetCertificateChain`, `CertDuplicateCertificateChain`, `CertFreeCertificateChain`, `CertVerifyCertificateChainPolicy`.

### B. Process & Execution (`KERNEL32.dll`, `shell32.dll`)
* **shell32.dll (1 API):** `ShellExecuteExW` (launches downloaded installer).
* **KERNEL32.dll (Process Management):** `GetCurrentProcess`, `GetCurrentProcessId`, `GetCurrentThread`, `GetCurrentThreadId`, `GetStartupInfoW`, `GetCommandLineA`, `GetCommandLineW`, `GetExitCodeProcess`, `TerminateProcess`, `ExitProcess`, `CreateThread`, `SwitchToThread`.

### C. File System & I/O (`KERNEL32.dll`, `ntdll.dll`)
* **KERNEL32.dll:** `CreateFileW`, `DeleteFileW`, `WriteFile`, `FlushFileBuffers`, `GetTempPathW`, `GetFullPathNameW`, `GetFinalPathNameByHandleW`, `GetCurrentDirectoryW`, `FindFirstFileExW`, `FindNextFileW`, `FindClose`, `SetFilePointerEx`, `SetFileTime`, `SetFileInformationByHandle`, `SetFileCompletionNotificationModes`, `CreateIoCompletionPort`, `GetQueuedCompletionStatusEx`, `PostQueuedCompletionStatus`.
* **ntdll.dll:** `NtCreateFile`, `NtWriteFile`, `NtCancelIoFileEx`, `NtDeviceIoControlFile`, `RtlNtStatusToDosError`.

### D. Registry & System Configuration (`advapi32.dll`)
* `RegOpenKeyExW`, `RegQueryValueExW`, `RegCloseKey` (used by reqwest / schannel to query Windows proxy settings `Software\Microsoft\Windows\CurrentVersion\Internet Settings`).

### E. Cryptography & Trust Verification (`wintrust.dll`, `bcryptprimitives.dll`)
* **wintrust.dll:** `WinVerifyTrust` (verifies digital signatures on downloaded executables).
* **bcryptprimitives.dll:** `ProcessPrng` (cryptographically secure pseudo-random number generator for nonce/token creation).

### F. User Interface & Error Reporting (`user32.dll`)
* `MessageBoxW` (displays error message boxes to user on verification or network failure).

### G. Synchronization & Concurrency (`api-ms-win-core-synch-l1-2-0.dll`, `KERNEL32.dll`)
* **api-ms-win-core-synch-l1-2-0.dll:** `WaitOnAddress`, `WakeByAddressAll`, `WakeByAddressSingle` (modern Windows futex-style synchronization primitives used by Rust standard library).
* **KERNEL32.dll:** `CreateMutexA`, `ReleaseMutex`, `WaitForSingleObject`, `WaitForSingleObjectEx`, `InitializeCriticalSectionEx`, `EnterCriticalSection`, `LeaveCriticalSection`, `DeleteCriticalSection`, `Sleep`.

### H. Anti-Debug, Memory & Exception Handling (`KERNEL32.dll`)
* `IsDebuggerPresent`, `UnhandledExceptionFilter`, `SetUnhandledExceptionFilter`, `AddVectoredExceptionHandler`, `RaiseException`, `RtlCaptureContext`, `RtlUnwind`, `VirtualProtect`, `HeapAlloc`, `HeapFree`, `HeapReAlloc`, `HeapSize`, `GetProcessHeap`, `FlsAlloc`, `FlsFree`, `FlsGetValue`, `FlsSetValue`.
* *Note:* No stealth keylogging APIs (`SetWindowsHookEx`), clipboard monitoring (`GetClipboardData`), screen capture (`BitBlt`), or privilege escalation drivers/services are imported.

---

## 6. Resources, Overlay & Embedded Artifacts

### PE Resources (`.rsrc`)
* `RT_ICON`: 6 icons (sizes: 16x16, 32x32, 48x48, 64x64, 128x128, 256x256).
* `RT_GROUP_ICON`: ID `32512` (Loggy3 application icon).
* `RT_VERSION`: Language 1033 (English US).
* `RT_MANIFEST`: Common-Controls v6.0 manifest with standard execution level (`asInvoker`).

### Overlay
* **Start Offset:** `0x0028B200` (`2,667,008` bytes from start).
* **Length:** `9,520` bytes.
* **Content:** Authenticode digital signature (`WIN_CERTIFICATE` structure).
* **Extracted Artifact:** Exported to [`analysis/artifacts/signature.p7b`](../artifacts/signature.p7b).

### Embedded Tauri JSON Configurations
Extracted directly from `.rdata`:
1. **Base Configuration:** [`analysis/artifacts/tauri_base_config.json`](../artifacts/tauri_base_config.json)
2. **Windows Configuration:** Embedded overlay with endpoints and external binary specifications.

---

## 7. Decoded Strings & Observable Artifacts

* **C2 / Network Endpoints:**
  * `https://loggy3.com/windows/latest.json` (Primary manifest endpoint)
  * `https://loggy3.com/macos/latest.json` (macOS cross-reference)
* **Domains:**
  * `loggy3.com`
  * `schema.tauri.app`
  * `ssl.com` (CRL & OCSP servers: `crls.ssl.com`, `ocsps.ssl.com`)
* **Minisign Public Key:**
  * Base64: `dW50cnVzdGVkIGNvbW1lbnQ6IG1pbmlzaWduIHB1YmxpYyBrZXk6IEExRDg1NkQ1NjQ5ODU1OTIKUldTU1ZaaGsxVmJZb2Y4eng2d0xEUkd0dDh2R1lsdUZuTTRBa0NyMjQ0R2lTK0dvSHFCcUVCS24K`
  * Decoded: `untrusted comment: minisign public key: A1D856D564985592\nRWSSVzhk1VbYof8zx6wLDRGtt8vGYluFnM4AkCr244GiS+GoHqBqEBKn\n`
  * Key ID: `A1D856D564985592`
* **Internal Bundled Binary References:**
  * `binaries/loggy3-kernel.exe`
  * `binaries/replay_windows.exe`
  * `../../target/release/loggy3-kernel`
  * `../../target/release/replay_mac`
* **PDB Path:** `loggy3_bootstrap.pdb`
* **Source Path:** `gui/src-tauri/src/bin/loggy3-bootstrap.rs`
* **Build User Environment:** `/Users/ryanhuang/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/...`

