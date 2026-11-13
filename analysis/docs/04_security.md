# Security Assessment & Vulnerability Review: Loggy3 Bootstrap (`latest.exe`)

## 1. Classification & Verdict

* **Classification Verdict:** **SUSPICIOUS / POTENTIALLY UNWANTED (PUA) - BRAND CONFUSION / TYPOSQUATTING**
* **Technical Risk Level:** **LOW-TO-MEDIUM** (Code itself is defensive, but the context involves significant brand mimicry)
* **Confidence Level:** **HIGH (95%)**

### Evidence-Based Rationale:
1. **Benign Capabilities in Code:** The binary is a defensively engineered bootstrap updater. It implements strict triple-validation (Minisign cryptographic signatures, SHA-256 content hashes, and Microsoft Authenticode verification via `WinVerifyTrust`). It contains no rootkit, keylogger, ransomware, or trojan payloads.
2. **Brand Mimicry & Identity Concerns:** The user was led to analyze this file as `"logi3.exe"`. The file describes itself as `"Loggy3"`, issued by `"Loggy3 LLC"` (a brand new entity with a certificate minted on Nov 10, 2026). This name strongly resembles Logitech's official branding (**"Logi"**). If an end user expects this file to be legitimate Logitech mouse/keyboard software, it is **spoofed / misleading**.
3. **Downloader / Stager Risk:** Because this executable functions as a remote stager that downloads and executes an external binary (`Loggy3-setup.exe`), the endpoint's security ultimately depends on the code contained within that downloaded setup package and the remote server's ongoing integrity.

---

## 2. MITRE ATT&CK Mapping

| MITRE ID | Technique Name | Evidence in Code | Address / Artifact |
|---|---|---|---|
| **T1036.005** | Masquerading: Match Legitimate Name or Location | Binary named `latest.exe` / `logi3.exe`, Product `Loggy3` closely resembling Logitech's "Logi" brand | Metadata, `.rsrc`, `CompanyName: loggy3` |
| **T1105** | Ingress Tool Transfer | Downloads external installer from remote endpoint `https://loggy3.com/windows/latest.json` | `0x0040A40E`, `0x0040A9FD` |
| **T1059.003** | Command and Scripting Interpreter: Windows Command Shell / Process Execution | Spawns downloaded installer setup file using `ShellExecuteExW` | `0x00407B90` (`shell32!ShellExecuteExW`) |
| **T1082** | System Information Discovery | Queries CPU architecture via `IsWow64Process2` and `GetNativeSystemInfo` | `0x0040A01A`, `0x0040A0BF` |
| **T1071.001** | Application Layer Protocol: Web Protocols | Communicates over HTTPS (port 443) using modern TLS (Schannel) | `0x0040A40E` (`ws2_32.dll`, `secur32.dll`) |
| **T1553.002** | Subvert Trust Controls: Code Signing | Validates Authenticode signature using `WinVerifyTrust` and relies on valid SSL.com certificate | `0x00408250` (`wintrust!WinVerifyTrust`) |

---

## 3. Code Vulnerability & Security Posture Review

### Vulnerability Findings Table

| Vulnerability / Weakness | Severity | Impact | Code Location | Remediation / Analysis |
|---|---|---|---|---|
| **Predictable Temporary File Path (CWE-377)** | **Medium** | Race condition / pre-creation hijack | `0x00408CC0` (`fs_write_temporary_installer`) | The bootstrapper writes to `%TEMP%\[filename]-setup.exe` using `CREATE_ALWAYS`. While it opens the file exclusively during write, an unprivileged local attacker could monitor `%TEMP%` for the file creation. |
| **Lack of Pinned Server Public Key (CWE-295)** | **Low** | Man-in-the-Middle if Root CA compromised | `0x0040A40E` (`net_fetch_release_manifest`) | Relies on the default Windows OS CA store for TLS validation rather than hardcoded HPKP/SPKI pinning. However, mitigated by end-to-end Minisign payload signing. |
| **Cross-Platform Cross-Compilation Memory Safety** | **Informational (Positive)** | Immune to standard buffer overflows | Entire binary | Developed in 100% memory-safe Rust with bounds checking and strict slice parsing. No unsafe C string functions (`strcpy`, `sprintf`) used. |
| **Strict Signature Enforcement** | **Informational (Positive)** | Tamper-proof delivery | `0x00409190` & `0x00408250` | Enforces Ed25519 Minisign public key verification AND Windows Authenticode verification before execution. |

---

## 4. Indicators of Compromise (IOCs)

### Host-Based Indicators
* **Primary Executable Hashes:**
  * MD5: `fd74524c5748ea58c9422ec7f20413d3`
  * SHA-1: `3bb07c15bd8384b9a618fb4149092e55b6411f51`
  * SHA-256: `70e882677be96220f22e42fa3879f5aed13d84f56ad348a74e9b5855697d6fe0`
* **File Paths Created:**
  * `%TEMP%\*setup.exe` (e.g., `%LOCALAPPDATA%\Temp\Loggy3-setup.exe`)
* **Code-Signing Certificate Thumbprint:**
  * SHA-1: `506CAA977115F36EBC2A82078E45ACF4B358D596` (Subject: `Loggy3 LLC`)

### Network Indicators
* **Domains:**
  * `loggy3.com`
* **HTTP Request Endpoints:**
  * `https://loggy3.com/windows/latest.json`
  * `https://loggy3.com/macos/latest.json`
* **User Agent:**
  * Standard `reqwest/0.11` / `hyper/0.14` default user-agent header.

---

## 5. Suggested YARA Detection Rules

```yara
rule Suspicious_Loggy3_Bootstrap_Installer {
    meta:
        description = "Detects Loggy3 bootstrap launcher mimicking Logitech branding"
        author = "Reverse Engineering & Malware Analysis Team"
        date = "2026-11-13"
        hash256 = "70e882677be96220f22e42fa3879f5aed13d84f56ad348a74e9b5855697d6fe0"
        confidence = "High"
    strings:
        $s1 = "gui/src-tauri/src/bin/loggy3-bootstrap.rs" ascii
        $s2 = "https://loggy3.com/windows/latest.json" ascii
        $s3 = "the embedded Windows updater endpoint is missing" ascii
        $s4 = "the installer updater signature did not verify" ascii
        $s5 = "the Windows installer signature did not verify" ascii
        $pdb = "loggy3_bootstrap.pdb" ascii
        $key = "dW50cnVzdGVkIGNvbW1lbnQ6IG1pbmlzaWduIHB1YmxpYyBrZXk6IEExRDg1NkQ1NjQ5ODU1OTIK" ascii
    condition:
        uint16(0) == 0x5A4D and
        uint32(uint32(0x3C)) == 0x00004550 and
        (2 of ($s1, $s2, $s3, $s4, $s5) or $pdb or $key)
}
```

---

## 6. Privacy & Data Exposure Impact

* **Telemetry Harvested by Bootstrapper:** Zero personal data is transmitted by `latest.exe`.
* **Credential Exposure Risk:** None by this binary directly.
* **Network Exposure Risk:** Minimal (single HTTPS GET transaction to `loggy3.com`).
* **Downstream Privacy Risk:** The overarching Loggy3 application claims to be a "recorder" (`com.loggy3.recorder`). If the full downstream application is installed, it is expected to capture screen recordings, audio, or logs as part of its core product functionality.

