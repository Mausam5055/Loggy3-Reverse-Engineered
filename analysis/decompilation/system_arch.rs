//! Module: system_arch
//! Address Range: 0x0040A01A - 0x0040A100 & 0x00409740 - 0x00409860
//! Purpose: System architecture detection and PE payload validation
//! Confidence: High

use core::ffi::c_void;
use alloc::string::String;

extern "system" {
    fn GetModuleHandleW(lpModuleName: *const u16) -> *mut c_void;
    fn GetProcAddress(hModule: *mut c_void, lpProcName: *const u8) -> *mut c_void;
    fn GetCurrentProcess() -> *mut c_void;
    fn GetNativeSystemInfo(lpSystemInfo: *mut SYSTEM_INFO);
}

#[repr(C)]
pub struct SYSTEM_INFO {
    pub wProcessorArchitecture: u16,
    pub wReserved: u16,
    pub dwPageSize: u32,
    pub lpMinimumApplicationAddress: *mut c_void,
    pub lpMaximumApplicationAddress: *mut c_void,
    pub dwActiveProcessorMask: usize,
    pub dwNumberOfProcessors: u32,
    pub dwProcessorType: u32,
    pub dwAllocationGranularity: u32,
    pub wProcessorLevel: u16,
    pub wProcessorRevision: u16,
}

#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum ProcessorArchitecture {
    X86,
    X86_64,
    Arm64,
    Unknown(u16),
}

type FnIsWow64Process2 = unsafe extern "system" fn(
    hProcess: *mut c_void,
    pProcessMachine: *mut u16,
    pNativeMachine: *mut u16,
) -> i32;

/// Address: 0x0040A01A
/// Reconstructed function: sys_detect_host_architecture()
///
/// Dynamically resolves kernel32!IsWow64Process2.
/// If available (Windows 10 1709+), queries native machine type directly.
/// Otherwise, falls back to GetNativeSystemInfo.
pub fn sys_detect_host_architecture() -> Result<ProcessorArchitecture, String> {
    unsafe {
        // Wide string "kernel32.dll"
        let kernel32_w: [u16; 13] = [
            'k' as u16, 'e' as u16, 'r' as u16, 'n' as u16, 'e' as u16, 'l' as u16,
            '3' as u16, '2' as u16, '.' as u16, 'd' as u16, 'l' as u16, 'l' as u16, 0,
        ];
        let h_kernel32 = GetModuleHandleW(kernel32_w.as_ptr());
        if !h_kernel32.is_null() {
            let proc_name = b"IsWow64Process2\0";
            let p_func = GetProcAddress(h_kernel32, proc_name.as_ptr());
            if !p_func.is_null() {
                let is_wow64_process2: FnIsWow64Process2 = core::mem::transmute(p_func);
                let mut process_machine: u16 = 0;
                let mut native_machine: u16 = 0;
                let res = is_wow64_process2(GetCurrentProcess(), &mut process_machine, &mut native_machine);
                if res != 0 {
                    return match native_machine {
                        0x014C => Ok(ProcessorArchitecture::X86),
                        0x8664 => Ok(ProcessorArchitecture::X86_64),
                        0xAA64 => Ok(ProcessorArchitecture::Arm64),
                        other => Err(alloc::format!("unsupported Windows machine type 0x{:04x}", other)),
                    };
                }
            }
        }

        // Fallback: GetNativeSystemInfo
        let mut sys_info: SYSTEM_INFO = core::mem::zeroed();
        GetNativeSystemInfo(&mut sys_info);
        match sys_info.wProcessorArchitecture {
            0 => Ok(ProcessorArchitecture::X86),     // PROCESSOR_ARCHITECTURE_INTEL
            9 => Ok(ProcessorArchitecture::X86_64),  // PROCESSOR_ARCHITECTURE_AMD64
            12 => Ok(ProcessorArchitecture::Arm64),  // PROCESSOR_ARCHITECTURE_ARM64
            _ => Err(String::from("unsupported Windows processor architecture")),
        }
    }
}

/// Address: 0x00409740
/// Reconstructed function: sys_verify_pe_and_architecture()
///
/// Inspects payload buffer:
/// 1. Verifies DOS header (e_magic == 'MZ')
/// 2. Traverses e_lfanew to PE header
/// 3. Verifies PE signature ('PE\0\0')
/// 4. Reads FileHeader.Machine:
///    - 0x014C: i386
///    - 0x8664: x86_64
///    - 0xAA64: aarch64
/// 5. Validates binary architecture is compatible with host system
pub fn sys_verify_pe_and_architecture(
    payload: &[u8],
    host_arch: ProcessorArchitecture,
) -> Result<(), String> {
    if payload.len() < 0x40 {
        return Err(String::from("the installer is not a PE file"));
    }

    // Verify 'MZ'
    if payload[0] != b'M' || payload[1] != b'Z' {
        return Err(String::from("the installer is not a PE file"));
    }

    // Offset to PE signature at 0x3C
    let pe_offset = u32::from_le_bytes([
        payload[0x3C], payload[0x3D], payload[0x3E], payload[0x3F],
    ]) as usize;

    if pe_offset + 24 > payload.len() {
        return Err(String::from("the installer has an invalid PE header"));
    }

    // Verify 'PE\0\0'
    if &payload[pe_offset..pe_offset + 4] != b"PE\0\0" {
        return Err(String::from("the installer has an invalid PE header"));
    }

    // Machine field in COFF header (offset + 4)
    let machine = u16::from_le_bytes([
        payload[pe_offset + 4], payload[pe_offset + 5],
    ]);

    let payload_arch = match machine {
        0x014C => ProcessorArchitecture::X86,
        0x8664 => ProcessorArchitecture::X86_64,
        0xAA64 => ProcessorArchitecture::Arm64,
        _ => return Err(String::from("the installer launcher architecture is not compatible with this computer")),
    };

    // Architecture compatibility check
    match (host_arch, payload_arch) {
        (ProcessorArchitecture::X86_64, ProcessorArchitecture::X86_64) => Ok(()),
        (ProcessorArchitecture::X86_64, ProcessorArchitecture::X86) => Ok(()), // WOW64 supported
        (ProcessorArchitecture::X86, ProcessorArchitecture::X86) => Ok(()),
        (ProcessorArchitecture::Arm64, ProcessorArchitecture::Arm64) => Ok(()),
        (ProcessorArchitecture::Arm64, ProcessorArchitecture::X86) => Ok(()), // x86 emulation
        _ => Err(String::from("the installer launcher architecture is not compatible with this computer")),
    }
}

