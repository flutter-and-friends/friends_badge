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
  * Find native implementation in [WriteActivity.java:927](android_app/decompiled_apk/decompiled_java/cn/highlight/work_card_write/activity/WriteActivity.java)
- [ ] Add a way to select the dither method. 

## Phase 5: iOS support
- [ ] Implement NFC support for iOS... if possible
