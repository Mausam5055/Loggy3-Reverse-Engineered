# Under the Hood: How `logi3.exe` (`latest.exe`) Operates Internally

This document provides a low-level, step-by-step technical walkthrough of how the executable operates under the hood, from the exact moment the Windows PE loader maps it into virtual memory down to its termination.

---

## 1. High-Level Architecture Overview

At its core, `latest.exe` is not a typical monolithic installer; it is an **orchestrated cryptographic pipeline and network stager** written in **Rust** (using the Tauri bootstrap subsystem). Its internal runtime consists of three primary layers:

```
┌────────────────────────────────────────────────────────────────────────┐
│                      Windows OS & Win32 Subsystems                     │
│    [ntdll.dll]       [kernel32.dll]     [user32.dll]    [wintrust.dll] │
└──────▲─────────────────────▲──────────────────▲───────────────▲────────┘
       │ Syscalls            │ Win32 APIs       │ MessageBoxW   │ WinVerifyTrust
┌──────┴─────────────────────┴──────────────────┴───────────────┴────────┐
│                        loggy3-bootstrap Runtime                        │
│                                                                        │
│   ┌────────────────────────────────────────────────────────────────┐   │
│   │ 1. Boot & Memory Init: MSVC CRT SEH, Security Cookie, TLS Alloc│   │
│   ├────────────────────────────────────────────────────────────────┤   │
│   │ 2. Embedded Config Extractor: Base JSON & Windows Overlay      │   │
│   ├────────────────────────────────────────────────────────────────┤   │
│   │ 3. Architecture Probe: Dynamic IsWow64Process2 / PE Validator  │   │
│   ├────────────────────────────────────────────────────────────────┤   │
│   │ 4. Secure Transport Engine: Reqwest / Tokio / Schannel TLS 1.3 │   │
│   ├────────────────────────────────────────────────────────────────┤   │
│   │ 5. Triple Cryptographic Gate:                                  │   │
│   │    - Gate A: SHA-256 Payload Hash Verification                 │   │
│   │    - Gate B: Minisign Ed25519 Asymmetric Signature Check       │   │
│   │    - Gate C: Windows Authenticode (WinVerifyTrust)             │   │
│   ├────────────────────────────────────────────────────────────────┤   │
│   │ 6. Process Spawner & Synchronizer: ShellExecuteExW & Wait      │   │
│   └────────────────────────────────────────────────────────────────┘   │
└────────────────────────────────────────────────────────────────────────┘
```

---

## 2. Low-Level Execution Lifecycle: Phase by Phase

### Phase 1: Operating System Mapping & CRT Initialization
**Virtual Address Range:** `0x005D4410` - `0x005D47C0`

1. **PE Loading & Relocation:**
   * The Windows PE Loader reads the DOS header (`MZ`), validates the PE header (`PE\0\0`), and maps sections into virtual address space with ImageBase `0x00400000`.
   * Address Space Layout Randomization (ASLR) and Data Execution Prevention (DEP) are activated due to `DllCharacteristics` flags `0x8140`.
2. **Security Cookie Generation (`0x005D47B0`):**
   * Before executing user code, `pe_entrypoint` (`0x005D4410`) calls `__security_init_cookie`.
   * It mixes `QueryPerformanceCounter` and `GetSystemTimeAsFileTime` into the global stack canary at `0x00674EC0` to prevent buffer overflow exploits.
3. **Structured Exception Handling (SEH) Setup (`0x005D4220`):**
   * Establishes an MSVC SEH frame on the thread stack at `FS:[0]`.
   * Initializes C-Runtime thread local storage (TLS) tables referenced in `.tls` (`0x00677000`).
   * Hands execution over to Rust's runtime entrypoint (`std::rt::lang_start`), which invokes `loggy3_bootstrap::main()` at `0x00412E90`.

---

### Phase 2: Configuration Deserialization from `.rdata`
**Virtual Address Range:** `0x00409904` - `0x00409A60`

The binary does not read an external `.ini` or `.json` file from disk. Instead, two complete Tauri configurations are baked directly into the `.rdata` section at compile time:

```
[.rdata @ 0x005E23C0] Base Config JSON:
  {
    "productName": "Loggy3",
    "version": "0.10.5",
    "identifier": "com.loggy3.recorder",
    "plugins": {
      "updater": {
        "pubkey": "dW50cnVzdGVkIGNvbW1lbnQ6IG1pbmlzaWdu...",
        "endpoints": ["https://loggy3.com/macos/latest.json"]
      }
    }
  }

[.rdata @ 0x005E3000] Windows Platform Overlay JSON:
  {
    "bundle": {
      "externalBin": ["binaries/loggy3-kernel", "binaries/replay_windows"],
      "resources": { ... }
    },
    "plugins": {
      "updater": {
        "endpoints": ["https://loggy3.com/windows/latest.json"]
      }
    }
  }
```

* **Step 1 (`0x00409904`):** Passes the base config pointer into `serde_json::from_str`. If corrupted, triggers error: `"the embedded base configuration is invalid"`.
* **Step 2 (`0x0040999E`):** Merges the Windows platform overlay.
* **Step 3 (`0x004099FF`):** Extracts `/plugins/updater/pubkey` into memory.
* **Step 4 (`0x00409A2F`):** Extracts `/plugins/updater/endpoints/0` (`https://loggy3.com/windows/latest.json`).
* **Step 5 & 6 (`0x00409A82` & `0x00409DD1`):** Validates the URL structure and runs an **assert domain trust check**:
  * Asserts that `url.host()` matches `loggy3.com` or `*.loggy3.com`.
  * If the host does not match, execution immediately halts with: `"the updater endpoint is not trusted"`.

---

### Phase 3: Hardware & Architecture Interrogation
**Virtual Address Range:** `0x0040A01A` - `0x0040A100`

Because the binary is 32-bit x86 (`i686`), it can execute on 32-bit Windows, 64-bit Windows (WOW64), and ARM64 Windows (via emulation). To prevent downloading a 64-bit installer onto a 32-bit host:

1. Calls `GetModuleHandleW("kernel32.dll")` and `GetProcAddress("IsWow64Process2")`.
2. If `IsWow64Process2` is present (Windows 10 1709+):
   * Queries `GetCurrentProcess()`.
   * Evaluates `pNativeMachine`:
     * `0x014C` -> Intel x86 (32-bit)
     * `0x8664` -> AMD64 / x86_64 (64-bit)
     * `0xAA64` -> ARM64
3. If `IsWow64Process2` is absent (Windows 7 / 8 / older Win 10):
   * Calls `GetNativeSystemInfo(&sys_info)`.
   * Reads `sys_info.wProcessorArchitecture`.

---

### Phase 4: Secure Network Transport Engine
**Virtual Address Range:** `0x0040A40E` - `0x0040B560`

The executable embeds the complete asynchronous networking stack (`tokio`, `hyper`, `h2`, `reqwest`, `schannel`):

```
                   HTTPS Request to loggy3.com (Port 443)
┌────────────────────────────────────────────────────────────────────────┐
│  Reqwest Client                                                        │
│     │                                                                  │
│     ▼                                                                  │
│  Hyper HTTP/1.1 & HTTP/2 Client Engine                                 │
│     │                                                                  │
│     ▼                                                                  │
│  Windows Schannel TLS Provider (secur32.dll / crypt32.dll)             │
│     - AcquireCredentialsHandleA(UNIFIED_PROT)                          │
│     - InitializeSecurityContextW(TargetName="loggy3.com")              │
│     - QueryContextAttributesW(SECPKG_ATTR_STREAM_SIZES)                │
│     - EncryptMessage / DecryptMessage                                  │
│     │                                                                  │
│     ▼                                                                  │
│  Winsock2 Non-blocking Sockets (ws2_32.dll)                            │
│     - WSASocketW, connect, WSASend, recv                               │
└────────────────────────────────────────────────────────────────────────┘
```

1. **Manifest Retrieval (`0x0040A40E`):**
   * Issues HTTPS GET to `https://loggy3.com/windows/latest.json`.
   * Streams response into memory via `0x0040B040`.
   * Implements size guarding: if buffer exceeds 250 MB, aborts with `"the download is unexpectedly large"`.
2. **JSON Manifest Deserialization (`0x0040B560`):**
   * Deserializes the JSON response into `struct UpdateManifest`:
     ```json
     {
       "version": "0.10.5",
       "signature": "<base64 Ed25519 signature>",
       "url": "https://loggy3.com/releases/Loggy3-v0.10.5-setup.exe",
       "checksum": "<64-character SHA-256 hex string>"
     }
     ```
   * Asserts `version` is not empty.
   * Asserts `signature` exists.
   * Asserts `url` is trusted.

---

### Phase 5: Payload Retrieval & The 3 Cryptographic Gates
**Virtual Address Range:** `0x00408410` - `0x00409740`

Once the manifest is validated, `net_fetch_installer_payload` (`0x0040A9FD`) downloads the full installer binary into an in-memory buffer (`Vec<u8>`).

Before a single byte touches the disk or runs, it must pass through **Three Strict Cryptographic Gates**:

```
      Downloaded Payload Bytes (In-Memory Buffer)
                         │
                         ▼
        ┌───────────────────────────────────┐
        │   GATE 1: SHA-256 Checksum        │
        │   (0x00408410)                    │
        │   Compute SHA-256(payload)        │
        │   Compare to manifest.checksum    │
        └─────────────────┬─────────────────┘
                          │ Matches
                          ▼
        ┌───────────────────────────────────┐
        │   GATE 2: Minisign Ed25519 Sig    │
        │   (0x00409190)                    │
        │   Verify Ed25519 signature over   │
        │   payload using embedded pubkey   │
        └─────────────────┬─────────────────┘
                          │ Valid Signature
                          ▼
        ┌───────────────────────────────────┐
        │   GATE 3: COFF PE Machine Check   │
        │   (0x00409740)                    │
        │   Parse MZ / e_lfanew / PE\0\0    │
        │   Verify payload machine matches  │
        │   host CPU architecture           │
        └─────────────────┬─────────────────┘
                          │ Compatible
                          ▼
        Write to %TEMP%\Loggy3-setup.exe (0x00408CC0)
                          │
                          ▼
        ┌───────────────────────────────────┐
        │   GATE 4: Microsoft Authenticode  │
        │   (0x00408250)                    │
        │   Call WinVerifyTrust()           │
        │   Verify valid OS-trusted cert    │
        └─────────────────┬─────────────────┘
                          │ Trusted
                          ▼
              Proceed to Process Launch
```

#### Detailed Gate Mechanics:
1. **Gate 1 - SHA-256 Hashing (`0x00408410`):**
   * Uses Rust's `sha2` crate. Updates hash over chunks of the memory buffer.
   * Verifies the resulting hex string exactly matches `manifest.checksum`.
   * On failure: `"the installer checksum does not match"`.
2. **Gate 2 - Minisign Ed25519 Verification (`0x00409190`):**
   * Decodes embedded Minisign public key:
     `Key ID: A1D856D564985592`
     `Pubkey: 512495ce193555b6287fccf3eb0b0d11adb7cbc6625b859cce00902af6e381a2`
   * Extracts raw 64-byte Ed25519 signature from `manifest.signature`.
   * Executes `ed25519_dalek::VerifyingKey::verify(payload, &signature)`.
   * On failure: `"the installer updater signature did not verify"`.
3. **Gate 3 - PE Header Compatibility (`0x00409740`):**
   * Inspects bytes `0..2` for `MZ`.
   * Reads offset at `0x3C` (`e_lfanew`) and checks signature `PE\0\0`.
   * Inspects `FileHeader.Machine` (offset `+4`):
     * If host is x86: rejects x64 and ARM64 payloads.
     * If host is x64: allows x64 or x86 (WOW64).
4. **Gate 4 - Windows Authenticode Verification (`0x00408250`):**
   * Once written to `%TEMP%\[filename]-setup.exe`, calls `wintrust.dll!WinVerifyTrust`.
   * Configures `WINTRUST_DATA` with `WTD_REVOKE_WHOLECHAIN` and `WINTRUST_ACTION_GENERIC_VERIFY_V2`.
   * Ensures the file has not been tampered with and is signed by a valid, trusted certificate in the Windows Certificate Store.

---

### Phase 6: Temporary File Generation & Disk Commit
**Virtual Address Range:** `0x00408CC0` - `0x00409190`

1. Extracts installer filename from the verified URL (e.g., `Loggy3-setup.exe`).
2. Calls `GetTempPathW(260, &buffer)` to resolve the active user's temp folder (`%LOCALAPPDATA%\Temp\`).
3. Calls `CreateFileW` with:
   * `dwDesiredAccess`: `GENERIC_WRITE` (`0x40000000`)
   * `dwShareMode`: `0` (exclusive lock prevents other local processes from altering the binary while being written)
   * `dwCreationDisposition`: `CREATE_ALWAYS` (`2`)
   * `dwFlagsAndAttributes`: `FILE_ATTRIBUTE_TEMPORARY` (`0x00000100`)
4. Writes payload via `WriteFile` in 64 KB blocks.
5. Calls `FlushFileBuffers` and `CloseHandle`.

---

### Phase 7: Child Process Launch & Synchronization
**Virtual Address Range:** `0x00407B90` - `0x00408070`

```
0x00407C19:  mov  dword ptr [ebp - 0x88], 0x3C   ; sizeof(SHELLEXECUTEINFOW) = 60
0x00407C23:  mov  dword ptr [ebp - 0x84], 0x40   ; fMask = SEE_MASK_NOCLOSEPROCESS
0x00407C2D:  mov  dword ptr [ebp - 0x78], eax    ; lpFile = "%TEMP%\Loggy3-setup.exe"
0x00407C33:  mov  dword ptr [ebp - 0x6C], 1      ; nShow = SW_SHOWNORMAL (1)
0x00407C3B:  call dword ptr [0x00652BA0]         ; shell32!ShellExecuteExW(&sei)
0x00407C4F:  call dword ptr [0x00652B7C]         ; kernel32!WaitForSingleObject(hProcess, INFINITE)
0x00407C6C:  call dword ptr [0x00652A9C]         ; kernel32!GetExitCodeProcess(hProcess, &exitCode)
0x00407C77:  call dword ptr [0x00652A0C]         ; kernel32!CloseHandle(hProcess)
```

1. **Launch:** Calls `shell32.dll!ShellExecuteExW` passing the full path to the temporary setup file.
   * `SEE_MASK_NOCLOSEPROCESS` instructs Windows to return the open handle to the child process in `sei.hProcess`.
2. **Synchronization:** Calls `kernel32.dll!WaitForSingleObject(sei.hProcess, INFINITE)`:
   * The bootstrapper suspends its thread and waits for the installer setup UI to finish executing.
3. **Exit Evaluation:**
   * Queries child exit code via `GetExitCodeProcess`.
   * Evaluates if `exitCode == 0` (`ERROR_SUCCESS`) or `exitCode == 3010` (`ERROR_SUCCESS_REBOOT_REQUIRED`).
4. **Clean Exit:**
   * Calls `CloseHandle(hProcess)`.
   * Terminates itself via `TerminateProcess(GetCurrentProcess(), 0)`.

---

### Phase 8: Error Handling & Modal UI Pipeline
**Virtual Address Range:** `0x00407990` - `0x00407B90`

If any step in the pipeline returns an `Err(msg)`:
1. `bootstrap_run()` bubbles the `String` up to `bootstrap_main()` (`0x00412E90`).
2. Converts the UTF-8 error string and the title `"Loggy3"` to null-terminated UTF-16 wide strings using `util_utf8_to_wide_null_terminated` (`0x00412040`).
3. Calls `user32.dll!MessageBoxW`:
   ```c
   MessageBoxW(
       NULL,                     // hWnd (desktop modal)
       lpErrorText,              // Reconstructed error description
       L"Loggy3",                // Dialog Title
       MB_ICONERROR | MB_OK     // 0x00000010 (Red Critical Error Icon)
   );
   ```
4. Calls `process::exit(1)`.

---

## 3. Summary of Internal State & Memory Layout

| Virtual Address | Section | Internal Content / Variable |
|---|---|---|
| `0x00401000` - `0x00407000` | `.text` | Core Rust JSON and string formatting helper routines |
| `0x00407990` - `0x00407B90` | `.text` | `ui_display_error_dialog` (`MessageBoxW`) |
| `0x00407B90` - `0x00408070` | `.text` | `exec_launch_installer_and_wait` (`ShellExecuteExW`) |
| `0x00408250` - `0x00408410` | `.text` | `sec_verify_authenticode_signature` (`WinVerifyTrust`) |
| `0x00408410` - `0x00408CC0` | `.text` | `crypto_verify_payload_checksum` (SHA-256 comparison) |
| `0x00408CC0` - `0x00409190` | `.text` | `fs_write_temporary_installer` (`CreateFileW` / `%TEMP%`) |
| `0x00409190` - `0x00409740` | `.text` | `crypto_verify_minisign_signature` (Ed25519 verifier) |
| `0x00409740` - `0x00409870` | `.text` | `sys_verify_pe_and_architecture` (COFF machine checker) |
| `0x00409870` - `0x0040AC60` | `.text` | `bootstrap_run` (Central 16-step orchestrator loop) |
| `0x0040A01A` - `0x0040A100` | `.text` | `sys_detect_host_architecture` (`IsWow64Process2`) |
| `0x0040A40E` - `0x0040B560` | `.text` | `net_fetch_release_manifest` & HTTP chunked streaming |
| `0x0040B560` - `0x0040B7D0` | `.text` | `manifest_parse_update_json` (`serde_json` deserializer) |
| `0x00412E90` - `0x00413000` | `.text` | `bootstrap_main` (Top-level Rust application entrypoint) |
| `0x005D4410` - `0x005D47C0` | `.text` | `pe_entrypoint` & `crt_startup_seh` (PE loader entry) |
| `0x005E23C0`                 | `.rdata`| Hardcoded Base Tauri JSON configuration |
| `0x005E3000`                 | `.rdata`| Hardcoded Windows Platform Overlay JSON |
| `0x005E3F58`                 | `.rdata`| Constant string: `"kernel32.dllIsWow64Process2"` |
| `0x005E3FA0`                 | `.rdata`| Constant string: `"gui/src-tauri/src/bin/loggy3-bootstrap.rs"` |
| `0x00652A00` - `0x00652CA0` | `.rdata`| Import Address Table (IAT) for 154 imported Win32 APIs |
| `0x00674EC0`                 | `.data` | MSVC `__security_cookie` stack canary variable |
| `0x00677000`                 | `.tls`  | Thread Local Storage directory |
| `0x00678000`                 | `.rsrc` | Application icons (6 sizes), manifest, version table |
| `0x0068B200`                 | Overlay | 9,520-byte Authenticode digital signature (`Loggy3 LLC`) |

---

## 4. Key Takeaways

1. **Defensively Programmed:** The binary implements industrial-grade download and verification safeguards. It is physically impossible to feed it an unapproved payload without compromising both the Minisign private key and an Authenticode code-signing certificate trusted by Windows.
2. **Strictly Inbound:** No telemetry, host reconnaissance, keystroke logging, or screen capture exists in this executable.
3. **The Stager Model:** This executable's sole operational purpose is to place the real application onto the system. Any malicious or intrusive activity would occur only after `Loggy3-setup.exe` is successfully executed.
