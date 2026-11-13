//! Module: disk_io
//! Address Range: 0x00408CC0 - 0x00409190
//! Purpose: Temporary file management and payload persistence
//! Confidence: High

use core::ffi::c_void;
use alloc::string::String;
use alloc::vec::Vec;

extern "system" {
    fn GetTempPathW(nBufferLength: u32, lpBuffer: *mut u16) -> u32;
    fn CreateFileW(
        lpFileName: *const u16,
        dwDesiredAccess: u32,
        dwShareMode: u32,
        lpSecurityAttributes: *mut c_void,
        dwCreationDisposition: u32,
        dwFlagsAndAttributes: u32,
        hTemplateFile: *mut c_void,
    ) -> *mut c_void;
    fn WriteFile(
        hFile: *mut c_void,
        lpBuffer: *const u8,
        nNumberOfBytesToWrite: u32,
        lpNumberOfBytesWritten: *mut u32,
        lpOverlapped: *mut c_void,
    ) -> i32;
    fn FlushFileBuffers(hFile: *mut c_void) -> i32;
    fn CloseHandle(hObject: *mut c_void) -> i32;
    fn DeleteFileW(lpFileName: *const u16) -> i32;
}

const GENERIC_WRITE: u32 = 0x40000000;
const CREATE_ALWAYS: u32 = 2;
const FILE_ATTRIBUTE_TEMPORARY: u32 = 0x00000100;
const INVALID_HANDLE_VALUE: *mut c_void = -1isize as *mut c_void;

/// Address: 0x00408CC0
/// Reconstructed function: fs_write_temporary_installer()
///
/// Obtains %TEMP% directory path, determines installer filename from URL
/// (e.g., "Loggy3-setup.exe"), creates file, writes payload, and closes handle.
pub fn fs_write_temporary_installer(
    payload: &[u8],
    installer_url: &str,
) -> Result<String, String> {
    // 1. Extract filename from URL
    let filename = installer_url
        .rsplit('/')
        .next()
        .filter(|s| !s.is_empty())
        .ok_or_else(|| String::from("the installer URL has no filename"))?;

    if !filename.ends_with("-setup.exe") && !filename.ends_with(".exe") {
        return Err(String::from("the installer URL has no filename"));
    }

    unsafe {
        // 2. Query Windows Temp directory
        let mut temp_buf = [0u16; 260];
        let len = GetTempPathW(260, temp_buf.as_mut_ptr());
        if len == 0 || len > 260 {
            return Err(String::from("could not create the temporary installer"));
        }

        let temp_dir = String::from_utf16_lossy(&temp_buf[..len as usize]);
        let full_path = alloc::format!("{}{}", temp_dir, filename);

        // Convert full_path to wide string
        let mut full_path_w: Vec<u16> = full_path.encode_utf16().collect();
        full_path_w.push(0);

        // 3. CreateFileW
        let h_file = CreateFileW(
            full_path_w.as_ptr(),
            GENERIC_WRITE,
            0, // exclusive access
            core::ptr::null_mut(),
            CREATE_ALWAYS,
            FILE_ATTRIBUTE_TEMPORARY,
            core::ptr::null_mut(),
        );

        if h_file == INVALID_HANDLE_VALUE {
            return Err(String::from("could not create the temporary installer"));
        }

        // 4. WriteFile in chunks
        let mut bytes_written: u32 = 0;
        let mut offset = 0;
        while offset < payload.len() {
            let to_write = core::cmp::min(payload.len() - offset, 64 * 1024) as u32;
            let res = WriteFile(
                h_file,
                payload[offset..].as_ptr(),
                to_write,
                &mut bytes_written,
                core::ptr::null_mut(),
            );

            if res == 0 || bytes_written != to_write {
                CloseHandle(h_file);
                DeleteFileW(full_path_w.as_ptr());
                return Err(String::from("could not write the temporary installer"));
            }

            offset += to_write as usize;
        }

        // 5. Flush and close
        FlushFileBuffers(h_file);
        CloseHandle(h_file);

        Ok(full_path)
    }
}

