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
final image = FriendsBadge.createBadgeImage(yourImage);

// Then, write the image to the badge over NFC.
await WaitingForNfcTap.showLoading(
  context: context,
  job: FriendsBadge.nfcBadgeRepository.writeOverNfc(
    image,
  ),
);
```

The `showLoading` method will display a progress indicator while the image is
being written to the badge.

For more advanced use cases, you can access the `NfcBadgeRepository` directly
via `FriendsBadge.nfcBadgeRepository`.

## Example

For a complete example, see the `example` directory.

## Documentation

For detailed documentation, see the `docs` directory.
