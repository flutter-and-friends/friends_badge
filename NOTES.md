# Notes for `friends_badge` Flutter Port

This document contains important notes, code snippets, and potential gotchas for the Flutter port of the "Work Badge" application.

## Image Processing

The core image processing logic is located in the `cn.highlight.work_card_write.util.ImgUtil` class in the original Android app.

### Grayscale Conversion

The grayscale value for each pixel is calculated using the following formula:

`grayscale = 0.3 * R + 0.59 * G + 0.11 * B`

### Color Palettes

The app supports three color palettes:

-   Black and White
-   Black, White, and Red
-   Black, White, and Yellow

The `getPalette` method in `ImgUtil.smali` defines these palettes.

### Dithering

The app uses Floyd-Steinberg dithering for higher quality images. The `floydSteinbergDither` method in `ImgUtil.smali` contains the implementation.

## Communication Protocols

The app uses two different protocols for communicating with the badge: BLE and NFC.

### BLE Communication

-   **Service UUID:** `6e400001-b5a3-f393-e0a9-e50e24dcca9e`
-   **Write Characteristic UUID:** `6e400002-b5a3-f393-e0a9-e50e24dcca9e`
-   **Notify Characteristic UUID:** `6e400003-b5a3-f393-e0a9-e50e24dcca9e`

The command structure is detailed in `BLE_FORMAT.md` and validated in `CmdCenter.smali`.

### NFC Communication

-   Uses `NfcA` technology.
-   Data is sent in 4-byte chunks.
-   The command structure is different from BLE and is detailed in `NFC_FORMAT.md`.

## Gotchas and Potential Challenges

-   **Replicating the dithering algorithm:** The Floyd-Steinberg dithering algorithm needs to be implemented carefully in Dart to match the output of the original app.
-   **BLE and NFC Permissions:** The Flutter app will need to request the appropriate permissions for BLE and NFC on both Android and iOS.
-   **Platform-specific code:** While Flutter is cross-platform, there might be a need for some platform-specific code, especially for the NFC implementation.
-   **Font rendering:** The example app's template editor will need to handle font rendering correctly to match the original app's behavior.

## Code Snippets

### BLE Command constants from `CmdCenter.smali`

'''smali
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
'''
