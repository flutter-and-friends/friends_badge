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

## Phase 4: Testing and Debugging

- [ ] Write unit tests for the package's logic.
- [ ] Implement BLE device selection in the example app.
- [ ] Perform integration testing with a physical badge using the example app.