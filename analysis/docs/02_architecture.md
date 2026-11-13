# Architecture & Execution Flow: Loggy3 Bootstrap (`latest.exe`)

## 1. Overall System Design & Modular Organization

`latest.exe` is a specialized, security-hardened **bootstrap installer and launcher** built in Rust for the **Loggy3 recorder suite** (identifier: `com.loggy3.recorder`). Its primary objective is to safely retrieve, cryptographically verify, and execute the full Loggy3 platform installer on Windows endpoints without bundling multi-megabyte payloads in initial distribution channels.

### Key Architectural Characteristics
* **Language & Compiler:** Rust 2021 edition (compiled with `rustc 1.83+` / LLVM 19, cross-compiled from macOS x86_64 to `i686-pc-windows-msvc`).
* **Framework:** Custom minimal Tauri bootstrap stub (`gui/src-tauri/src/bin/loggy3-bootstrap.rs`).
* **Subsystem:** Windows GUI (`subsystem: 0x0002`). Executes completely silently without a console window unless an error occurs, in which case a native modal dialog is presented.
* **Threading Model:** Synchronous orchestrator on the main thread, utilizing Tokio/Futures asynchronous non-blocking I/O runtime underneath for network streaming.
* **Services / Drivers:** None installed or managed by this executable.
* **IPC Mechanisms:** Standard Win32 process handles (`hProcess`) and process exit synchronization (`WaitForSingleObject`, `GetExitCodeProcess`).
* **Configuration Sources:** Hardcoded embedded JSON configurations stored in `.rdata` section (`tauri.conf.json` base configuration and Windows platform overlay).

---

## 2. Mermaid Diagrams

### (a) Component & Architecture Diagram
```mermaid
graph TD
    subgraph HostSystem["Host Operating System (Windows)"]
        subgraph PE["PE Executable: latest.exe"]
            EP["PE Entry Point\n(0x005D4410)"]
            CRT["MSVC CRT SEH\n(0x005D4220)"]
            MAIN["bootstrap_main()\n(0x00412E90)"]
            RUN["bootstrap_run()\n(0x00409870)"]
            
            subgraph Modules["Functional Subsystems"]
                CFG["Config Parser\n(0x00409904)"]
                ARCH["Arch & PE Verifier\n(0x0040A01A)"]
                NET["HTTPS Downloader\n(0x0040A40E)"]
                MANIFEST["Manifest Parser\n(0x0040B560)"]
                CRYPTO["Crypto Verifier\n(0x00408410)"]
                DISK["Disk I/O\n(0x00408CC0)"]
                SEC["Authenticode Validator\n(0x00408250)"]
                EXEC["Process Launcher\n(0x00407B90)"]
                UI["UI Dialog\n(0x00407990)"]
            end
        end
        
        subgraph Win32Subsystem["Windows System Libraries"]
            K32["kernel32.dll\n(IsWow64Process2, Files, Wait)"]
            U32["user32.dll\n(MessageBoxW)"]
            S32["shell32.dll\n(ShellExecuteExW)"]
            WTR["wintrust.dll\n(WinVerifyTrust)"]
            SCH["secur32.dll / crypt32.dll\n(Schannel TLS 1.3)"]
        end
        
        TEMP["%TEMP%\\Loggy3-setup.exe"]
        CHILD["Child Installer Process\n(Loggy3 Setup)"]
    end

    subgraph RemoteInfra["Remote Infrastructure"]
        C2["https://loggy3.com/windows/latest.json"]
        CDN["https://loggy3.com/.../Loggy3-setup.exe"]
    end

    EP --> CRT --> MAIN --> RUN
    RUN --> CFG
    RUN --> ARCH
    RUN --> NET
    RUN --> MANIFEST
    RUN --> CRYPTO
    RUN --> DISK
    RUN --> SEC
    RUN --> EXEC
    MAIN -.->|On Failure| UI

    NET <-->|HTTPS TLS| C2
    NET <-->|HTTPS Stream| CDN
    ARCH <--> K32
    DISK -->|Write & Flush| TEMP
    SEC -->|Verify Cert| WTR
    EXEC -->|ShellExecuteExW| S32
    S32 --> CHILD
    EXEC -->|WaitForSingleObject| CHILD
    UI --> U32
```

### (b) Execution Flowchart
```mermaid
flowchart TD
    Start(["Process Launch (0x005D4410)"]) --> CRTInit["CRT Init & Security Cookie (0x005D4220)"]
    CRTInit --> MainEntry["bootstrap_main() Entry (0x00412E90)"]
    MainEntry --> ParseBase["Parse Embedded Base JSON (0x00409904)"]
    ParseBase --> ParseWin["Parse Embedded Windows JSON (0x0040999E)"]
    ParseWin --> ExtractKey["Extract Minisign Public Key & Endpoint"]
    ExtractKey --> ValidateURL{"Is Endpoint Valid\n& Domain Trusted?"}
    
    ValidateURL -- No --> ErrEndpoint["Error: Endpoint invalid/untrusted"]
    ValidateURL -- Yes --> DetectArch["Detect Host CPU Architecture\n(IsWow64Process2 / GetNativeSystemInfo)"]
    
    DetectArch --> FetchManifest["HTTPS GET https://loggy3.com/windows/latest.json"]
    FetchManifest --> CheckManifest{"Manifest Valid JSON\n& Has Version?"}
    
    CheckManifest -- No --> ErrManifest["Error: Manifest invalid/empty"]
    CheckManifest -- Yes --> FetchPayload["HTTPS GET Download Installer Binary Stream"]
    
    FetchPayload --> CheckHash{"SHA-256 Checksum\nMatches Manifest?"}
    CheckHash -- No --> ErrHash["Error: Checksum mismatch"]
    CheckHash -- Yes --> CheckMinisign{"Minisign Ed25519\nSignature Valid?"}
    
    CheckMinisign -- No --> ErrMinisign["Error: Updater signature invalid"]
    CheckMinisign -- Yes --> CheckPE{"Valid PE Header &\nMatches Host Architecture?"}
    
    CheckPE -- No --> ErrPE["Error: Incompatible Architecture / Invalid PE"]
    CheckPE -- Yes --> WriteTemp["Write Payload to %TEMP%\\...-setup.exe"]
    
    WriteTemp --> CheckAuth{"WinVerifyTrust()\nAuthenticode Valid?"}
    CheckAuth -- No --> ErrAuth["Error: Windows signature did not verify"]
    CheckAuth -- Yes --> Launch["ShellExecuteExW(SEE_MASK_NOCLOSEPROCESS)"]
    
    Launch --> WaitProc["WaitForSingleObject(hProcess, INFINITE)"]
    WaitProc --> GetExit["GetExitCodeProcess(&exitCode)"]
    GetExit --> CheckExit{"ExitCode == 0\nor 3010?"}
    
    CheckExit -- Yes --> Success(["TerminateProcess(0) - Success"])
    CheckExit -- No --> ErrExit["Error: Installer non-zero exit"]
    
    ErrEndpoint --> ShowErr["ui_display_error_dialog(MessageBoxW)"]
    ErrManifest --> ShowErr
    ErrHash --> ShowErr
    ErrMinisign --> ShowErr
    ErrPE --> ShowErr
    ErrAuth --> ShowErr
    ErrExit --> ShowErr
    ShowErr --> ExitFail(["process::exit(1)"])
```

### (c) Call Graph of Core Functions
```mermaid
graph LR
    subgraph EntryPoint
        A["pe_entrypoint (0x005D4410)"] --> B["crt_startup_seh (0x005D4220)"]
        B --> C["bootstrap_main (0x00412E90)"]
    end

    subgraph MasterOrchestrator
        C --> D["bootstrap_run (0x00409870)"]
        C -->|Err| M["ui_display_error_dialog (0x00407990)"]
    end

    subgraph PipelineTasks
        D --> E["config_parse_json (0x00409904 / 0x0040999E)"]
        D --> F["sys_detect_host_architecture (0x0040A01A)"]
        D --> G["net_fetch_release_manifest (0x0040A40E)"]
        D --> H["manifest_parse_update_json (0x0040B560)"]
        D --> I["net_fetch_installer_payload (0x0040A9FD)"]
        D --> J["crypto_verify_payload_checksum (0x00408410)"]
        D --> K["crypto_verify_minisign_signature (0x00409190)"]
        D --> L["sys_verify_pe_and_architecture (0x00409740)"]
        D --> N["fs_write_temporary_installer (0x00408CC0)"]
        D --> O["sec_verify_authenticode_signature (0x00408250)"]
        D --> P["exec_launch_installer_and_wait (0x00407B90)"]
    end

    subgraph Win32APIs
        F --> Q["kernel32!IsWow64Process2"]
        F --> R["kernel32!GetNativeSystemInfo"]
        O --> S["wintrust!WinVerifyTrust"]
        P --> T["shell32!ShellExecuteExW"]
        P --> U["kernel32!WaitForSingleObject"]
        P --> V["kernel32!GetExitCodeProcess"]
        M --> W["user32!MessageBoxW"]
    end
```

### (d) Data-Flow Diagram
```mermaid
flowchart LR
    RData[".rdata Section\n(Embedded JSON)"] -->|TauriConfig| Parser["JSON Parser"]
    Parser -->|Pubkey & Endpoint URL| Orchestrator["bootstrap_run()"]
    
    RemoteServer["loggy3.com"] -->|HTTPS Response| NetStream["Network Stream"]
    NetStream -->|Manifest JSON| ManifestParser["UpdateManifest"]
    ManifestParser -->|Installer URL, Hash, Sig| Orchestrator
    
    RemoteServer -->|Binary Payload| PayloadBuffer["Memory Buffer (Vec&lt;u8&gt;)"]
    PayloadBuffer --> SHA256["SHA-256 Engine"]
    PayloadBuffer --> Ed25519["Minisign Ed25519"]
    PayloadBuffer --> PEParser["PE Header Parser"]
    
    SHA256 -->|Computed Hash| Comparator{"Hash Match?"}
    Ed25519 -->|Sig Verification| Comparator2{"Sig Valid?"}
    PEParser -->|Machine Architecture| Comparator3{"Arch Compatible?"}
    
    PayloadBuffer -->|Write to Disk| TempFile["%TEMP%\\Loggy3-setup.exe"]
    TempFile --> WinTrust["WinVerifyTrust()"]
    WinTrust -->|Cert Trust OK| ShellExec["ShellExecuteExW()"]
    ShellExec --> InstallerProcess["Running Installer"]
```

### (e) Network Sequence Diagram
```mermaid
sequenceDiagram
    autonumber
    participant Host as Loggy3 Bootstrap (Client)
    participant DNS as DNS Resolver
    participant C2 as loggy3.com (Server)
    participant WinTrust as Windows Crypto API (OS)

    Host->>Host: Parse embedded endpoint https://loggy3.com/windows/latest.json
    Host->>DNS: Resolve loggy3.com
    DNS-->>Host: IP Address
    Host->>C2: TLS 1.3 Handshake (Schannel)
    C2-->>Host: Server Certificate & Cipher Agreement
    Host->>C2: GET /windows/latest.json (HTTP/1.1 or H2)
    C2-->>Host: 200 OK (Release Manifest JSON)
    Host->>Host: Parse Manifest (url, checksum, signature, version)
    Host->>C2: GET /.../Loggy3-setup.exe
    C2-->>Host: 200 OK (Chunked Binary Stream)
    Host->>Host: Accumulate bytes in memory
    Host->>Host: Compute SHA-256 and verify against manifest checksum
    Host->>Host: Verify Ed25519 Minisign signature with embedded pubkey
    Host->>Host: Verify PE headers & architecture compatibility
    Host->>Host: Write payload to %TEMP%\...-setup.exe
    Host->>WinTrust: WinVerifyTrust(WTD_CHOICE_FILE, %TEMP%\...-setup.exe)
    WinTrust-->>Host: 0 (ERROR_SUCCESS)
    Host->>Host: ShellExecuteExW() -> Launch installer & wait
```

---

## 3. Core Components Table

| Component Name | Memory Location | Purpose | Inputs | Outputs | Primary Dependencies |
|---|---|---|---|---|---|
| **Bootstrap Entry & SEH** | `0x005D4220` - `0x005D47C0` | Initializes MSVC CRT, sets up structured exception filters, configures memory cookies | Execution environment | Initialized process context | `ntdll.dll`, `kernel32.dll` |
| **Main Orchestrator** | `0x00412E90` & `0x00409870` | Directs the 16-step bootstrap lifecycle, catches errors, invokes modal dialogs | Embedded configs, OS state | Child process execution | Rust runtime, `bootstrap_run` |
| **Config Parser** | `0x00409904` - `0x00409A60` | Deserializes embedded base and platform JSON configs | Embedded strings at `0x005E23C0` | `TauriConfig` struct | `serde_json` |
| **Architecture Validator** | `0x0040A01A` & `0x00409740` | Discovers host CPU architecture and verifies downloaded binary PE machine type | System context, raw PE bytes | `Result<ProcessorArchitecture, Err>` | `kernel32!IsWow64Process2`, `GetNativeSystemInfo` |
| **Downloader Engine** | `0x0040A40E` - `0x0040B560` | Issues HTTPS requests with TLS validation and streams responses with size bounds | Validated URLs | In-memory byte buffers | `reqwest`, `hyper`, `schannel`, `ws2_32.dll` |
| **Manifest Parser** | `0x0040B560` - `0x0040B7D0` | Parses JSON release manifest into structured release attributes | Manifest JSON bytes | `UpdateManifest` struct | `serde_json` |
| **Crypto Verifier** | `0x00408410` & `0x00409190` | Validates payload SHA-256 checksum and Ed25519 Minisign digital signature | Payload bytes, signature, pubkey | `Result<(), Err>` | `sha2`, `ed25519-dalek`, `base64` |
| **Disk Manager** | `0x00408CC0` - `0x00409190` | Creates temporary setup executable in `%TEMP%` and commits payload | In-memory bytes, URL filename | On-disk file path | `kernel32!CreateFileW`, `WriteFile`, `GetTempPathW` |
| **Authenticode Validator** | `0x00408250` - `0x00408410` | Validates digital signature and certificate chain of the downloaded file | On-disk file path | `Result<(), Err>` | `wintrust!WinVerifyTrust` |
| **Process Launcher** | `0x00407B90` - `0x00408070` | Spawns child installer process, waits for termination, and evaluates exit code | File path | `Result<(), Err>` | `shell32!ShellExecuteExW`, `kernel32!WaitForSingleObject` |
| **UI Dialog Dispatcher** | `0x00407990` - `0x00407B90` | Renders native Windows error dialog on any failure condition | Title & message strings | Native modal display | `user32!MessageBoxW` |

