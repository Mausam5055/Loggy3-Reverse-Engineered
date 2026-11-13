import pefile
import capstone

pe = pefile.PE(r"E:\Loggy3 analysis\latest.exe")
image_base = pe.OPTIONAL_HEADER.ImageBase

# Read the .text section
text_sec = None
for s in pe.sections:
    if s.Name.startswith(b'.text'):
        text_sec = s
        break

text_data = text_sec.get_data()
text_va = image_base + text_sec.VirtualAddress

# Let's inspect function prologues and string references in the first 64KB (0x401000 - 0x411000)
# Look for references to the strings we found earlier:
# "could not download the release manifest" -> 0x5e40b9
# "the release manifest is not valid JSON"
# "the release manifest has no version"
# "the release has no updater signature"
# "the Windows installer signature did not verify"
# "the installer URL has no filename"
# "the production installer URL has no content hash"
# "the installer checksum does not match"
# "could not create the temporary installer"
# "could not write the temporary installer"
# "could not finish writing the temporary installer"
# "updater public key"
# "the updater public key is invalid"
# "the updater signature is invalid"
# "the installer updater signature did not verify"
# "the installer launcher architecture is not compatible with this computer"
# "the installer has an invalid PE header"
# "the installer is not a PE file"

with open(r"E:\Loggy3 analysis\latest.exe", "rb") as f:
    raw = f.read()

messages = [
    b"could not initialize the secure downloader",
    b"could not download the release manifest",
    b"the release manifest is not valid JSON",
    b"the release manifest has no version",
    b"the release has no updater signature",
    b"the embedded Windows updater endpoint is missing",
    b"the updater endpoint is invalid",
    b"the updater endpoint is not trusted",
    b"unsupported Windows processor architecture",
    b"unsupported Windows machine type",
    b"the Windows installer signature did not verify",
    b"the installer URL has no filename",
    b"the production installer URL has no content hash",
    b"the installer checksum does not match",
    b"could not create the temporary installer",
    b"could not write the temporary installer",
    b"could not finish writing the temporary installer",
    b"the updater public key is invalid",
    b"the updater signature is invalid",
    b"the installer updater signature did not verify",
    b"the installer launcher architecture is not compatible with this computer",
    b"the installer has an invalid PE header",
    b"the installer is not a PE file",
    b"gui/src-tauri/src/bin/loggy3-bootstrap.rs"
]

print("=== STRING REFS IN CODE ===")
for msg in messages:
    pos = raw.find(msg)
    if pos != -1:
        str_rva = pe.get_rva_from_offset(pos)
        str_va = image_base + str_rva
        # Find xrefs to str_va
        va_bytes = str_va.to_bytes(4, 'little')
        xrefs = []
        idx = 0
        while True:
            p = raw.find(va_bytes, idx)
            if p == -1: break
            xrva = pe.get_rva_from_offset(p)
            xva = image_base + xrva
            if image_base + 0x1000 <= xva < image_base + 0x1e2000:
                xrefs.append(xva)
            idx = p + 1
        xrefs_str = ", ".join([hex(x) for x in xrefs]) if xrefs else "None"
        print(f"[{hex(str_va)}] len={len(msg):<2} '{msg.decode()[:35]}...' -> code refs: {xrefs_str}")

