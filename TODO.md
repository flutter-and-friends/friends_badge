# TODO

## Phase 1: Project Restructuring

- [ ] Create the `example` directory.
- [ ] Move the existing `lib` directory and its contents to the `example` directory.
- [ ] Create a new `lib` directory in the root of the project for the package.
- [ ] Create a `pubspec.yaml` file for the `friends_badge` package.
- [ ] Create a `pubspec.yaml` file for the `example` app.

## Phase 2: Package Development (`friends_badge`)

- [ ] Move core logic (image processing, communication, models) to the package's `lib` folder.
- [ ] Define a public API for the package in `lib/friends_badge.dart`.
- [ ] Add dependencies to the package's `pubspec.yaml`.

## Phase 3: Example App Development (`example/`)

- [ ] Add a path dependency to the `friends_badge` package in the example app's `pubspec.yaml`.
- [ ] Refactor the example app's UI to use the public API of the `friends_badge` package.
- [ ] Build the UI screens for the template editor, home screen, and write screen.

## Phase 4: Testing and Debugging

- [ ] Write unit tests for the package's logic.
- [ ] Perform integration testing with a physical badge using the example app.
