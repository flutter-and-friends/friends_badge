# Notes for `friends_badge` Flutter Port

This document contains important notes, code snippets, and potential gotchas for the Flutter port of
the "Work Badge" application.

## Image Processing

The core image processing logic is located in the `cn.highlight.work_card_write.util.ImgUtil` class
in the original Android app.

### Grayscale Conversion

The grayscale value for each pixel is calculated using the following formula:

`grayscale = 0.3 * R + 0.59 * G + 0.11 * B`

### Color Palettes

The app supports three color palettes:

- Black and White (BW)
- Black, White, and Red (BWR) — the 3.7″ active badge
- Black, White, Yellow, and Red (BWYR)

The `getPalette` method in `ImgUtil.smali` defines these palettes.

### Dithering

The **vendor app** uses **two-row error-diffusion dithering** — not Floyd-Steinberg as stated here
previously — with error weights 3/5/1 (+7) in `EPaperPicture.java:73–192` (the `floydSteinbergDither`
name in the smali does not correspond to the actual algorithm).

The **port** currently dithers with the `image` package's `ditherImage`, **Atkinson kernel**
(`image_converter.dither`) — a different algorithm from the vendor's, but it only affects grain
quality, not correctness, and renders acceptably (NFC in production, BLE device-verified).
Selecting/aligning the dither method is tracked in [TODO.md](TODO.md).

### Grayscale / packing precision gotcha

Pixel tests use **int-truncated luminance**: a gray value whose double average is 95.59
(e.g. RGB 95,96,96) is black (≤95 after truncation) — a double-precision comparison of 95.59 ≤ 95
gets this wrong. Regression-covered in `test/ble/`.

## Communication Protocols

The app uses two different protocols for communicating with the badge: BLE and NFC.

### BLE Communication

- **Service UUID:** `6e400001-b5a3-f393-e0a9-e50e24dcca9e`
- **Write Characteristic UUID:** `6e400002-b5a3-f393-e0a9-e50e24dcca9e`
- **Notify Characteristic UUID:** `6e400003-b5a3-f393-e0a9-e50e24dcca9e`

The command structure is detailed in [BLE_FORMAT.md](BLE_FORMAT.md); the canonical
byte-exact reference (reconstructed from the decompiled vendor APK and **device-verified
2026-09-05**) is [badge-ble-protocol.md](badge-ble-protocol.md).

### NFC Communication

- Uses `IsoDep` (ISO 14443-4) — the underlying `NfcA` technology, but framed as APDUs.
- Data is sent in up-to-248-byte chunks wrapped in `D0 D1 …` APDUs (see
  [NFC_FORMAT.md](NFC_FORMAT.md)).

## Gotchas and Potential Challenges

- ~~**Replicating the dithering algorithm:**~~ Mostly settled. The vendor's two-row error-diffusion
  (weights 3/5/1+7, see above) was never ported; the port's Atkinson dither renders acceptably, so
  the remaining work is comfort/tone-matching only (tracked in TODO).
- **BLE and NFC Permissions:** The Flutter app will need to request the appropriate permissions for
  BLE and NFC on both Android and iOS.
- **Platform-specific code:** While Flutter is cross-platform, there might be a need for some
  platform-specific code, especially for the NFC implementation.
- **Font rendering:** The example app's template editor will need to handle font rendering correctly
  to match the original app's behavior.
- **Two NFC Protocols:** The app uses two different NFC protocols. The active badge protocol is used
  for badges with a battery and Bluetooth, while the passive badge protocol is used for badges that
  are powered by the NFC field. It is crucial to use the correct protocol for the target badge.
- **Image Conversion for Different Badge Sizes:** The image conversion logic is different for
  different badge sizes. The `EPaperPicture.java` file contains the specific logic for each badge
  size. It is important to use the correct image conversion logic for the target badge.
- ~~**Inverted Colors**~~ **RESOLVED (root-caused, device-verified fix).** The inversion came from
  BWR plane 0 polarity: bit = 1 means *white* in plane 0 (unlike BW mode where 1 = black). See
  [DATA_FORMAT.md](DATA_FORMAT.md).
- ~~**Half-Screen Issue**~~ **RESOLVED (root-caused, device-verified fix).** Two causes, both in the
  old port: chunk offsets were written little-endian (vendor is big-endian — a linear offset error
  shifts/scrambles every chunk), and the plane-index byte was hard-coded to 0. Both are documented
  in [badge-ble-protocol.md](badge-ble-protocol.md).

## Code Snippets

### BLE Command constants from `CmdCenter.smali`

```smali
.field public static final CMD_setRFIDConfig:B = 0x1t
.field public static final CMD_getRFIDConfig:B = 0x2t
.field public static final CMD_setRFIDArea:B = 0x3t
.field public static final CMD_getRFIDArea:B = 0x4t
.field public static final CMD_startOrStopRFID:B = 0x5t
.field public static final CMD_getRFIDStatus:B = 0x6t
.field public static final CMD_upRFIDData:B = 0x7t
.field public static final CMD_openMoreCabinet:B = 0x10t
.field public static final CMD_getCabinetLockStatus:B = 0x11t
.field public static final CMD_setCabinetSensor:B = 0x12t
```
