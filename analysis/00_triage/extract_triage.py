import sys
import os
import hashlib
import math
import struct
import json
import re
import pefile

target_path = r"E:\Loggy3 analysis\latest.exe"

with open(target_path, "rb") as f:
    raw_data = f.read()

pe = pefile.PE(data=raw_data)

def calc_entropy(data):
    if not data:
        return 0.0
    entropy = 0.0
    length = len(data)
    counts = {}
    for b in data:
        counts[b] = counts.get(b, 0) + 1
    for count in counts.values():
        p = count / length
        entropy -= p * math.log2(p)
    return entropy

print("=== 1. BASIC HASHES AND METADATA ===")
print(f"File path: {target_path}")
print(f"File size: {len(raw_data)} bytes ({len(raw_data)/1024/1024:.2f} MB)")
print(f"MD5:    {hashlib.md5(raw_data).hexdigest()}")
print(f"SHA1:   {hashlib.sha1(raw_data).hexdigest()}")
print(f"SHA256: {hashlib.sha256(raw_data).hexdigest()}")
print(f"Total Entropy: {calc_entropy(raw_data):.4f}")

# Compile timestamp
import datetime
timedatestamp = pe.FILE_HEADER.TimeDateStamp
try:
    ts_dt = datetime.datetime.fromtimestamp(timedatestamp, datetime.timezone.utc)
    ts_str = ts_dt.strftime('%Y-%m-%d %H:%M:%S UTC')
except Exception:
    ts_str = "Invalid timestamp"
print(f"TimeDateStamp: {timedatestamp} ({hex(timedatestamp)}) -> {ts_str}")

# Machine & Subsystem
machine_map = {0x14c: "i386 (32-bit x86)", 0x8664: "AMD64 (64-bit x86-64)", 0xaa64: "ARM64"}
subsystem_map = {1: "Native", 2: "Windows GUI", 3: "Windows CUI (Console)", 7: "POSIX CUI", 9: "Windows CE", 10: "EFI Application"}
print(f"Machine: {hex(pe.FILE_HEADER.Machine)} ({machine_map.get(pe.FILE_HEADER.Machine, 'Unknown')})")
print(f"Subsystem: {hex(pe.OPTIONAL_HEADER.Subsystem)} ({subsystem_map.get(pe.OPTIONAL_HEADER.Subsystem, 'Unknown')})")
print(f"ImageBase: {hex(pe.OPTIONAL_HEADER.ImageBase)}")
print(f"EntryPoint RVA: {hex(pe.OPTIONAL_HEADER.AddressOfEntryPoint)} (VA: {hex(pe.OPTIONAL_HEADER.ImageBase + pe.OPTIONAL_HEADER.AddressOfEntryPoint)})")
print(f"DllCharacteristics: {hex(pe.OPTIONAL_HEADER.DllCharacteristics)}")

# DllCharacteristics breakdown
dll_chars = pe.OPTIONAL_HEADER.DllCharacteristics
chars_desc = []
if dll_chars & 0x0020: chars_desc.append("HIGH_ENTROPY_VA")
if dll_chars & 0x0040: chars_desc.append("DYNAMIC_BASE (ASLR)")
if dll_chars & 0x0080: chars_desc.append("FORCE_INTEGRITY")
if dll_chars & 0x0100: chars_desc.append("NX_COMPAT (DEP)")
if dll_chars & 0x0200: chars_desc.append("NO_ISOLATION")
if dll_chars & 0x0400: chars_desc.append("NO_SEH")
if dll_chars & 0x0800: chars_desc.append("NO_BIND")
if dll_chars & 0x2000: chars_desc.append("WDM_DRIVER")
if dll_chars & 0x4000: chars_desc.append("GUARD_CF")
if dll_chars & 0x8000: chars_desc.append("TERMINAL_SERVER_AWARE")
print(f"Flags: {', '.join(chars_desc)}")

print("\n=== 2. SECTIONS ===")
for s in pe.sections:
    name = s.Name.decode('latin-1').strip('\x00')
    data = s.get_data()
    ent = calc_entropy(data)
    print(f"Section: {name:<10} RVA: {hex(s.VirtualAddress):<10} VirtSize: {hex(s.Misc_VirtualSize):<10} RawOffset: {hex(s.PointerToRawData):<10} RawSize: {hex(s.SizeOfRawData):<10} Entropy: {ent:.4f} Chars: {hex(s.Characteristics)}")

print("\n=== 3. VERSION INFO ===")
if hasattr(pe, 'FileInfo'):
    for finfo in pe.FileInfo:
        for entry in finfo:
            if hasattr(entry, 'StringTable'):
                for st in entry.StringTable:
                    for k, v in st.entries.items():
                        k_str = k.decode('utf-8', errors='ignore') if isinstance(k, bytes) else k
                        v_str = v.decode('utf-8', errors='ignore') if isinstance(v, bytes) else v
                        print(f"  {k_str}: {v_str}")

print("\n=== 4. DIGITAL SIGNATURE ===")
sec_entry = pe.OPTIONAL_HEADER.DATA_DIRECTORY[pefile.DIRECTORY_ENTRY['IMAGE_DIRECTORY_ENTRY_SECURITY']]
print(f"Security Directory RVA: {hex(sec_entry.VirtualAddress)}, Size: {hex(sec_entry.Size)}")
if sec_entry.VirtualAddress != 0 and sec_entry.Size != 0:
    cert_offset = sec_entry.VirtualAddress
    cert_len = sec_entry.Size
    cert_data = raw_data[cert_offset:cert_offset+cert_len]
    print(f"Extracted {len(cert_data)} bytes of WIN_CERTIFICATE struct at offset {hex(cert_offset)}")
    # Parse WIN_CERTIFICATE header
    # dwLength (4), wRevision (2), wCertificateType (2), bCertificate (variable)
    dwLength, wRevision, wCertType = struct.unpack_from("<IHH", cert_data, 0)
    print(f"WIN_CERTIFICATE: dwLength={dwLength}, wRevision={hex(wRevision)}, wCertificateType={hex(wCertType)}")
    pkcs7_blob = cert_data[8:dwLength]
    with open(r"E:\Loggy3 analysis\analysis\artifacts\signature.p7b", "wb") as pf:
        pf.write(pkcs7_blob)
    print(f"Saved PKCS#7 certificate blob to artifacts/signature.p7b ({len(pkcs7_blob)} bytes)")

print("\n=== 5. OVERLAY ===")
overlay_offset = pe.get_overlay_data_start_offset()
if overlay_offset:
    overlay = pe.get_overlay()
    print(f"Overlay offset: {hex(overlay_offset)}, size: {len(overlay)} bytes, entropy: {calc_entropy(overlay):.4f}")
    with open(r"E:\Loggy3 analysis\analysis\artifacts\overlay.bin", "wb") as of:
        of.write(overlay)
    print(f"Saved overlay to artifacts/overlay.bin")
else:
    print("No overlay detected")

print("\n=== 6. TLS CALLBACKS ===")
if hasattr(pe, 'DIRECTORY_ENTRY_TLS'):
    tls = pe.DIRECTORY_ENTRY_TLS.struct
    print(f"TLS StartAddressOfRawData: {hex(tls.StartAddressOfRawData)}")
    print(f"TLS EndAddressOfRawData: {hex(tls.EndAddressOfRawData)}")
    print(f"TLS AddressOfIndex: {hex(tls.AddressOfIndex)}")
    print(f"TLS AddressOfCallBacks: {hex(tls.AddressOfCallBacks)}")
    print(f"TLS SizeOfZeroFill: {hex(tls.SizeOfZeroFill)}")
    print(f"TLS Characteristics: {hex(tls.Characteristics)}")
    if hasattr(pe, 'TLS_CALLBACKS'):
        for cb in pe.TLS_CALLBACKS:
            print(f"  Callback: {hex(cb)}")
else:
    print("No TLS Directory")

