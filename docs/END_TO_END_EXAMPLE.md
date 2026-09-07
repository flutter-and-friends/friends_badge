# End-to-End Example: Writing an Image to the Badge

This document walks through taking an image, processing it, and sending it to the badge over NFC
and BLE. The BLE flow reflects the implementation in this package and has been **device-verified
(2026-09-05)**. Byte-format details: [DATA_FORMAT.md](DATA_FORMAT.md), transport:
[badge-ble-protocol.md](badge-ble-protocol.md) (BLE, canonical) and [NFC_FORMAT.md](NFC_FORMAT.md).

## 1. Image Preparation

1. **Load the image:** Load the desired image (e.g., a JPEG or PNG file) into a `Bitmap` object.
2. **Determine the badge model:** Identify the model of the badge you are writing to (e.g. "3.7" —
   240×416). Over NFC-active, the spec query returns the model; in the package this comes from the
   NFC configuration read.
3. **Resize the image:** Scale to fit inside the badge dimensions, centered, without upsampling
   beyond the exact canvas.
4. **Convert the image:** Quantize to the badge palette with two-row error-diffusion dithering and
   bit-pack column-major (see [DATA_FORMAT.md](DATA_FORMAT.md)).

## 2. NFC (active badge — ISO-DEP, in production use)

Implemented in `common_nfc_implementation.dart`; matches the vendor app except the optional
start command (see [NFC_FORMAT.md](NFC_FORMAT.md)).

1. Discover and connect to the tag via `IsoDep`.
2. **Spec query:** `D0 D1 03 00 01` → model/spec.
3. **Plane 0 chunks (≤248 B):** `D0 D1 <01 more | 02 last> 00 <LEN> <payload>`.
4. **Plane 1 chunks (BWR/BWRY):** `D0 D1 <04 more | 05 last> 00 <LEN> <payload>`.
5. **Commit:** `D0 D1 03 00 00`.
6. *(optional)* **NDEF message:** written after the image flash when requested.

## 3. BLE — implemented and device-verified

Run against the badge's Nordic UART Service (`6e400001-…`):

1. **Request MTU 247** and confirm the negotiated MTU (image frames are single writes up to
   227 bytes; at default MTU 23 every frame is rejected).
2. **Enable notifications** on `6e400003-…` (do this *before* the start command — the badge
   answers on it).
3. **Start:** write `A5 00 11 11` to `6e400002-…`; wait for the ACK
   (frame with command byte `0x11`, status `0x00`; non-zero means "unknown card" — abort).
4. **Image chunks:** per plane, frames `A5 <LEN> 12 <plane> <offset hi> <offset lo> <payload> CHK`
   — offsets are plane-relative and **big-endian**; payload ≤220 B (BW/BWR) or 210 B (BWYR 2bpp);
   ~80 ms between chunks; failed chunks are resent once.
5. **CRC check:** write `A5 00 13 13`; compare the badge's reply (CRC-32, big-endian) against the
   locally computed custom CRC over the image planes. On mismatch, restart the whole sequence
   (≤2 retries).
6. **Refresh:** write `A5 00 14 14`; await the `0x14` echo (~2 s settle).
7. **Disconnect.**
