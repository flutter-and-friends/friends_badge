# TODO

## Phase 1: Project Restructuring

- [x] Create the `example` directory.
- [x] Move the existing `lib` directory and its contents to the `example` directory.
- [x] Create a new `lib` directory in the root of the project for the package.
- [x] Create a `pubspec.yaml` file for the `friends_badge` package.
- [x] Create a `pubspec.yaml` file for the `example` app.

## Phase 2: Package Development (`friends_badge`)

- [x] Move core logic (image processing, communication, models) to the package's `lib` folder.
- [x] Define a public API for the package in `lib/friends_badge.dart`.
- [x] Add dependencies to the package's `pubspec.yaml`.
- [x] Implement the `BleBadgeRepository` class.
  - [x] Implement `scanForBleDevices`.
  - [x] Implement `writeOverBle`.
- [x] Implement the `NfcBadgeRepository` class.

## Phase 3: Example App Development (`example/`)

- [x] Add a path dependency to the `friends_badge` package in the example app's `pubspec.yaml`.
- [x] Refactor the example app's UI to use the public API of the `friends_badge` package.
- [x] Build the UI screens for the template editor, home screen, and write screen.
- [x] Implement BLE device selection in the example app.

## Phase 4: Reading config from badge

- [x] Implement reading the badge configuration over NFC.
- [ ] Add a way to select the dither method.

## Phase 6: BLE support

- [x] Reverse-engineer the exact vendor protocol from the decompiled APK
  (canonical reference: [badge-ble-protocol.md](badge-ble-protocol.md)).
- [x] Implement to spec: MTU 247, A5 framing with big-endian offsets and
  plane byte, telemetry CRC (custom variant), start/refresh handshake,
  vendor pacing.
- [x] **Device-verified:** full image transfer renders correctly on a real
  3.7" badge (2026-09-05). Formerly-uncertain protocol details
  (ACK layouts, CRC-on-the-wire, chunking, scan matching) confirmed on
  device — see §7 of the protocol reference.

## Phase 5: iOS support

- [ ] Implement NFC support for iOS... if possible
