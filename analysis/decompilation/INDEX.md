# Decompilation Index - Loggy3 Bootstrap (`latest.exe` / `logi3.exe`)

This directory contains the reconstructed, fully decompiled source code corresponding to the entirety of the custom application logic in `latest.exe` (PDB: `loggy3_bootstrap.pdb`, original source: `gui/src-tauri/src/bin/loggy3-bootstrap.rs`).

Every function is mapped back to its original virtual address (VA) in the binary, preserving machine-level operations, memory structs, Win32 API interactions, and error handling paths.

## Module Structure

| Source File | Module Purpose | Primary Functions & Addresses |
|---|---|---|
| [`entrypoint.rs`](entrypoint.rs) | PE Entry Point & CRT Initialization | `pe_entrypoint` (`0x005D4410`), `crt_startup_seh` (`0x005D4220`) |
| [`bootstrap_main.rs`](bootstrap_main.rs) | Application Main & Pipeline Orchestration | `bootstrap_main` (`0x00412E90`), `bootstrap_run` (`0x00409870`) |
| [`config.rs`](config.rs) | Embedded Configuration Management | `config_parse_base_json` (`0x00409904`), `config_parse_windows_json` (`0x0040999E`), `config_extract_updater_pubkey` (`0x004099FF`), `config_extract_updater_endpoint` (`0x00409A2F`) |
| [`system_arch.rs`](system_arch.rs) | CPU Architecture & PE Validation | `sys_detect_host_architecture` (`0x0040A01A`), `sys_verify_pe_and_architecture` (`0x00409740`) |
| [`network_downloader.rs`](network_downloader.rs) | HTTPS Secure Downloader & Streaming | `net_validate_endpoint_url` (`0x00409A82`), `net_verify_endpoint_trust` (`0x00409DD1`), `net_fetch_release_manifest` (`0x0040A40E`), `net_download_stream_to_memory` (`0x0040B040`), `net_fetch_installer_payload` (`0x0040A9FD`) |
| [`manifest_parser.rs`](manifest_parser.rs) | Release Manifest JSON Deserializer | `manifest_parse_update_json` (`0x0040B560`), `manifest_extract_version` (`0x0040ACDB`), `manifest_extract_signature` (`0x0040ACF2`) |
| [`crypto_verification.rs`](crypto_verification.rs) | Cryptographic Integrity Verification | `crypto_verify_payload_checksum` (`0x00408410`), `crypto_verify_minisign_signature` (`0x00409190`) |
| [`disk_io.rs`](disk_io.rs) | Temporary File Generation & Disk I/O | `fs_write_temporary_installer` (`0x00408CC0`) |
| [`authenticode_validator.rs`](authenticode_validator.rs) | Windows Authenticode Signature Check | `sec_verify_authenticode_signature` (`0x00408250`) |
| [`process_execution.rs`](process_execution.rs) | Child Process Execution & Synchronization | `exec_launch_installer_and_wait` (`0x00407B90`) |
| [`ui_dialogs.rs`](ui_dialogs.rs) | Native GUI Error Dialogs | `ui_display_error_dialog` (`0x00407990`) |
| [`helpers.rs`](helpers.rs) | Utility, String & Memory Helpers | `util_utf8_to_wide_null_terminated` (`0x00412040`), `mem_deallocate` (`0x00417800`), `fmt_format_args` (`0x00486300`) |

## Symbol Mapping
The complete address-to-symbol cross reference is documented in [`rename_map.md`](rename_map.md).

