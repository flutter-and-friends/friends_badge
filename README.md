# Friends Badge

A Flutter package for writing images to e-paper badges.

With this package you can control what is displayed on the Flutter & Friends
conference badge.

## Features

- Write images to e-paper badges over NFC
- Automatically detects the badge model and specifications
- Supports different color palettes (B&W, BWR, BWYR)
- Dithers images for optimal display on the e-paper screen
- Crops and resizes images to fit the badge's aspect ratio

## Usage

To use this package, add `friends_badge` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  friends_badge: ^0.1.0
```

Then, import the package in your Dart code:

```dart
import 'package:friends_badge/friends_badge.dart';
```

Now, you can use the `FriendsBadge` class to create a `BadgeImage` and write it
to your badge:

```dart
// First, create a BadgeImage from an image.
final image = BadgeImage(yourImage);

// Then, write the image to the badge using NFC and BLE.
await image.writeToBadge();

// Optionally, you can show a loading indicator while writing the image.
await WaitingForNfcTap.showLoading(
  context: context,
  job: image.writeToBadge();
);
```

The `showLoading` method will display a progress indicator while the image is
being written to the badge.

## Example

For a complete example, see the `example` directory.

## Documentation

For detailed documentation about how the protocol works, see the following files in the
`docs` directory:

- [BLE Format](docs/BLE_FORMAT.md)
- [Data Format](docs/DATA_FORMAT.md)
- [End-to-End Example](docs/END_TO_END_EXAMPLE.md)
- [Image Format](docs/IMAGE_FORMAT.md)
- [NFC Format](docs/NFC_FORMAT.md)
- [Notes](docs/NOTES.md)
