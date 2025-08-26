# Friends Badge

A Flutter package for writing images to e-paper badges.

With this package you can control what is displayed on the Flutter & Friends
conference badge.

## Features

* Write images to e-paper badges over NFC
* Automatically detects the badge model and specifications
* Supports different color palettes (B&W, BWR, BWYR)
* Dithers images for optimal display on the e-paper screen
* Crops and resizes images to fit the badge's aspect ratio

## Usage

To use this package, add `friends_badge` as a dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  friends_badge: ^0.0.1
```

Then, import the package in your Dart code:

```dart
import 'package:friends_badge/friends_badge.dart';
```

Now, you can use the `NfcBadgeRepository` to write images to your badge:

```dart
final repository = NfcBadgeRepository();

final image = img.decodeImage(yourImageBytes);
if (image != null) {
  repository
      .writeOverNfc(image)
      .listen(
        (progress) {
          // Update progress UI
        },
        onError: (error) {
          // Handle error
        },
        onDone: () {
          // Write operation completed
        },
      );
}
```

## Example

For a complete example, see the `example` directory.