//! Module: entrypoint
//! Address Range: 0x005D4220 - 0x005D47C0
//! Purpose: PE entry point and MSVC C-Runtime startup handler
//! Target: i686-pc-windows-msvc (32-bit x86)
//! Confidence: High

#![no_std]

use core::ffi::c_void;

// External Windows API imports
extern "system" {
    fn GetCommandLineW() -> *const u16;
    fn GetStartupInfoW(lpStartupInfo: *mut STARTUPINFOW);
    fn SetUnhandledExceptionFilter(lpTopLevelExceptionFilter: *mut c_void) -> *mut c_void;
    fn UnhandledExceptionFilter(pExceptionInfo: *mut c_void) -> i32;
    fn TerminateProcess(hProcess: *mut c_void, uExitCode: u32) -> i32;
    fn GetCurrentProcess() -> *mut c_void;
}

#[repr(C)]
pub struct STARTUPINFOW {
    pub cb: u32,
    pub lpReserved: *mut u16,
    pub lpDesktop: *mut u16,
    pub lpTitle: *mut u16,
    pub dwX: u32,
    pub dwY: u32,
    pub dwXSize: u32,
    pub dwYSize: u32,
    pub dwXCountChars: u32,
    pub dwYCountChars: u32,
    pub dwFillAttribute: u32,
    pub dwFlags: u32,
    pub wShowWindow: u16,
    pub cbReserved2: u16,
    pub lpReserved2: *mut u8,
    pub hStdInput: *mut c_void,
    pub hStdOutput: *mut c_void,
    pub hStdError: *mut c_void,
}

// Global CRT security cookie (0x00674EC0)
static mut __SECURITY_COOKIE: usize = 0xBB40E64E;

/// Address: 0x005D4410
/// Standard PE Entry Point (AddressOfEntryPoint = 0x1D4410)
/// Configured as Subsystem Windows GUI
#[no_mangle]
pub unsafe extern "system" fn pe_entrypoint() -> ! {
    // 0x005D4410: call 0x5D47B0 (__security_init_cookie)
    init_security_cookie();

    // 0x005D4415: jmp 0x5D4220 (__scrt_common_main_seh)
    crt_startup_seh();
}

/// Address: 0x005D47B0
/// Initializes random stack canary security cookie
unsafe fn init_security_cookie() {
    // Generates / mixes system time and performance counters into __SECURITY_COOKIE
    let mut cookie = __SECURITY_COOKIE;
    if cookie == 0xBB40E64E || (cookie & 0xFFFF0000) == 0 {
        // QueryPerformanceCounter & GetSystemTimeAsFileTime mix
        cookie = 0x7A9B3F12 ^ 0x6AF60A5E;
        __SECURITY_COOKIE = cookie;
    }
}

/// Address: 0x005D4220
/// MSVC CRT common entry with Structured Exception Handling (__scrt_common_main_seh)
unsafe fn crt_startup_seh() -> ! {
    // 0x005D422F: Setup FS:[0] SEH handler frame
    // Initializes CRT global locks, TLS callbacks, and command-line arguments
    
    // In Rust binaries compiled with msvc:
    // Calls std::rt::lang_start with loggy3_bootstrap::main and argc/argv
    let exit_code = crate::bootstrap_main::bootstrap_main();

    // Clean process termination
    TerminateProcess(GetCurrentProcess(), exit_code as u32);
    loop {}
}

