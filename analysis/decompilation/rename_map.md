# Function Rename and Symbol Recovery Mapping

This document maps all original virtual addresses (VAs) identified in `latest.exe` (internal name: `loggy3_bootstrap.exe`) to reconstructed function names, modules, signatures, confidence levels, and descriptions.

| Virtual Address | Original / Sym Name | Reconstructed Descriptive Name | Module | Confidence | Description |
|---|---|---|---|---|---|
| `0x005D4410` | `mainCRTStartup` | `pe_entrypoint` | `entrypoint` | High | PE entry point; initializes CRT security cookie and transitions to CRT main startup |
| `0x005D4220` | `__scrt_common_main_seh` | `crt_startup_seh` | `entrypoint` | High | MSVC C-Runtime startup handler; sets up SEH frame, initializes TLS callbacks, calls Rust runtime initialization |
| `0x00412E90` | `loggy3_bootstrap::main` | `bootstrap_main` | `bootstrap_main` | High | Top-level Rust application entrypoint; invokes `bootstrap_run()`, catches unhandled errors, formats UI error box, and terminates process |
| `0x00409870` | `loggy3_bootstrap::run` | `bootstrap_run` | `bootstrap_main` | High | Central orchestrator function executing the 16-step downloader, validator, verifier, and installer execution pipeline |
| `0x00409904` | `loggy3_bootstrap::config::parse_base` | `config_parse_base_json` | `config` | High | Parses the embedded Tauri base JSON configuration string (`tauri.conf.json`) |
| `0x0040999E` | `loggy3_bootstrap::config::parse_windows` | `config_parse_windows_json` | `config` | High | Parses the embedded Windows platform overlay JSON configuration |
| `0x004099FF` | `loggy3_bootstrap::config::get_pubkey` | `config_extract_updater_pubkey` | `config` | High | Extracts the base64-encoded minisign public key from `/plugins/updater/pubkey` |
| `0x00409A2F` | `loggy3_bootstrap::config::get_endpoint` | `config_extract_updater_endpoint` | `config` | High | Extracts the primary updater URL endpoint from `/plugins/updater/endpoints/0` |
| `0x00409A82` | `loggy3_bootstrap::net::validate_endpoint` | `net_validate_endpoint_url` | `network_downloader` | High | Validates the scheme, host, and path of the configured updater endpoint |
| `0x00409DD1` | `loggy3_bootstrap::net::check_trust` | `net_verify_endpoint_trust` | `network_downloader` | High | Asserts that the updater endpoint domain matches trusted domain `loggy3.com` |
| `0x0040A01A` | `loggy3_bootstrap::sys::detect_arch` | `sys_detect_host_architecture` | `system_arch` | High | Dynamically resolves `IsWow64Process2` (or falls back to `GetNativeSystemInfo`) to detect system CPU architecture |
| `0x00409740` | `loggy3_bootstrap::sys::verify_pe_arch` | `sys_verify_pe_and_architecture` | `system_arch` | High | Inspects downloaded payload headers (MZ/PE) and validates target architecture compatibility against host |
| `0x0040A40E` | `loggy3_bootstrap::net::fetch_manifest` | `net_fetch_release_manifest` | `network_downloader` | High | Issues HTTPS GET to `https://loggy3.com/windows/latest.json` with secure TLS stream |
| `0x0040B040` | `loggy3_bootstrap::net::stream_download` | `net_download_stream_to_memory` | `network_downloader` | High | Asynchronously reads HTTP response stream with buffer allocation, size capping, and connection timeout checks |
| `0x0040B560` | `loggy3_bootstrap::manifest::parse` | `manifest_parse_update_json` | `manifest_parser` | High | Deserializes the JSON release manifest into `UpdateManifest` and `PlatformRelease` structures |
| `0x0040ACDB` | `loggy3_bootstrap::manifest::get_version` | `manifest_extract_version` | `manifest_parser` | High | Validates presence of semver version string in the release manifest |
| `0x0040ACF2` | `loggy3_bootstrap::manifest::get_signature` | `manifest_extract_signature` | `manifest_parser` | High | Extracts the base64 minisign cryptographic signature from the release manifest |
| `0x0040A9FD` | `loggy3_bootstrap::net::fetch_installer` | `net_fetch_installer_payload` | `network_downloader` | High | Downloads the release installer binary stream specified in manifest `url` |
| `0x00408410` | `loggy3_bootstrap::crypto::verify_hash` | `crypto_verify_payload_checksum` | `crypto_verification` | High | Calculates SHA-256 hash of downloaded installer bytes and verifies against manifest content hash |
| `0x00409190` | `loggy3_bootstrap::crypto::verify_minisign` | `crypto_verify_minisign_signature` | `crypto_verification` | High | Verifies the Ed25519/minisign digital signature using the embedded public key |
| `0x00408CC0` | `loggy3_bootstrap::fs::write_temp_file` | `fs_write_temporary_installer` | `disk_io` | High | Obtains `%TEMP%` path, generates unique temporary filename (`-setup.exe`), writes installer binary, and flushes to disk |
| `0x00408250` | `loggy3_bootstrap::security::verify_trust` | `sec_verify_authenticode_signature` | `authenticode_validator` | High | Invokes `wintrust.dll!WinVerifyTrust` with `WINTRUST_ACTION_GENERIC_VERIFY_V2` to ensure the downloaded installer is signed by a trusted Authenticode certificate |
| `0x00407B90` | `loggy3_bootstrap::exec::run_installer` | `exec_launch_installer_and_wait` | `process_execution` | High | Populates `SHELLEXECUTEINFOW`, executes installer with `ShellExecuteExW`, synchronizes via `WaitForSingleObject`, and retrieves exit code via `GetExitCodeProcess` |
| `0x00407990` | `loggy3_bootstrap::ui::show_error` | `ui_display_error_dialog` | `ui_dialogs` | High | Formats error message and displays modal dialog using `user32.dll!MessageBoxW` (`MB_ICONERROR`) |
| `0x00412040` | `loggy3_bootstrap::util::to_utf16` | `util_utf8_to_wide_null_terminated` | `helpers` | High | Converts standard Rust UTF-8 `str` / `String` into null-terminated Windows UTF-16 wide string (`Vec<u16>`) |
| `0x00417800` | `alloc::alloc::dealloc` | `mem_deallocate` | `helpers` | High | Rust memory allocator deallocation routine |
| `0x00486300` | `core::fmt::write` | `fmt_format_args` | `helpers` | High | Core formatting dispatcher for error messages and display buffers |

