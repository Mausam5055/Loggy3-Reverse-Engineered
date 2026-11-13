//! Module: process_execution
//! Address Range: 0x00407B90 - 0x00408070
//! Purpose: Executing the verified installer executable and synchronizing completion
//! Confidence: High

use core::ffi::c_void;
use alloc::string::String;
use alloc::vec::Vec;

#[repr(C)]
pub struct SHELLEXECUTEINFOW {
    pub cbSize: u32,
    pub fMask: u32,
    pub hwnd: *mut c_void,
    pub lpVerb: *const u16,
    pub lpFile: *const u16,
    pub lpParameters: *const u16,
    pub lpDirectory: *const u16,
    pub nShow: i32,
    pub hInstApp: *mut c_void,
    pub lpIDList: *mut c_void,
    pub lpClass: *const u16,
    pub hkeyClass: *mut c_void,
    pub dwHotKey: u32,
    pub hIconOrMonitor: *mut c_void,
    pub hProcess: *mut c_void,
}

const SEE_MASK_NOCLOSEPROCESS: u32 = 0x00000040;
const SW_SHOWNORMAL: i32 = 1;
const INFINITE: u32 = 0xFFFFFFFF;
const ERROR_SUCCESS: u32 = 0;
const ERROR_SUCCESS_REBOOT_REQUIRED: u32 = 3010; // 0xBC2

extern "system" {
    fn ShellExecuteExW(pExecInfo: *mut SHELLEXECUTEINFOW) -> i32;
    fn WaitForSingleObject(hHandle: *mut c_void, dwMilliseconds: u32) -> u32;
    fn GetExitCodeProcess(hProcess: *mut c_void, lpExitCode: *mut u32) -> i32;
    fn CloseHandle(hObject: *mut c_void) -> i32;
}

/// Address: 0x00407B90
/// Reconstructed function: exec_launch_installer_and_wait()
///
/// Executes the verified installer using ShellExecuteExW:
/// - cbSize: 60 (0x3C)
/// - fMask: SEE_MASK_NOCLOSEPROCESS (0x40)
/// - nShow: SW_SHOWNORMAL (1)
/// - Waits synchronously for child process exit via WaitForSingleObject(hProcess, INFINITE)
/// - Retrieves process exit code via GetExitCodeProcess
/// - Accepts 0 (Success) or 3010 (Reboot Required)
/// - Closes process handle and returns
pub fn exec_launch_installer_and_wait(installer_path: &str) -> Result<(), String> {
    let mut path_w: Vec<u16> = installer_path.encode_utf16().collect();
    path_w.push(0);

    unsafe {
        let mut sei: SHELLEXECUTEINFOW = core::mem::zeroed();
        sei.cbSize = core::mem::size_of::<SHELLEXECUTEINFOW>() as u32; // 0x3C
        sei.fMask = SEE_MASK_NOCLOSEPROCESS; // 0x40
        sei.hwnd = core::ptr::null_mut();
        sei.lpVerb = core::ptr::null(); // default "open"
        sei.lpFile = path_w.as_ptr();
        sei.lpParameters = core::ptr::null();
        sei.lpDirectory = core::ptr::null();
        sei.nShow = SW_SHOWNORMAL; // 1

        let success = ShellExecuteExW(&mut sei);
        if success == 0 || sei.hProcess.is_null() {
            return Err(String::from("could not launch the installer process"));
        }

        // Wait for installer to finish execution
        let wait_res = WaitForSingleObject(sei.hProcess, INFINITE);
        if wait_res == 0xFFFFFFFF {
            CloseHandle(sei.hProcess);
            return Err(String::from("failed while waiting for installer completion"));
        }

        // Retrieve process exit code
        let mut exit_code: u32 = 0;
        let got_exit = GetExitCodeProcess(sei.hProcess, &mut exit_code);
        CloseHandle(sei.hProcess);

        if got_exit != 0 {
            if exit_code == ERROR_SUCCESS || exit_code == ERROR_SUCCESS_REBOOT_REQUIRED {
                Ok(())
            } else {
                Err(alloc::format!("installer exited with non-zero exit code 0x{:x}", exit_code))
            }
        } else {
            Err(String::from("failed to retrieve installer exit code"))
        }
    }
}

