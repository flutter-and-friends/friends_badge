# Friends Badge

A Flutter package for writing images to e-paper badges.

With this package you can control what is displayed on the Flutter & Friends
conference badge.

> [!NOTE]
> iOS doesn't like that there is no content on the NFC storage, so just write
> anything to the badge before the first time you are trying to use it. It
> could just be a space. You can easily do this with apps like NFC Tools.

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

## Writing to NFC Badges

To write to an NFC badge, your application needs to be configured with the
correct permissions and settings for both Android and iOS.

### Android Setup

On Android, you need to add the NFC permission and feature declaration to your
`AndroidManifest.xml` file, inside the `<manifest>` tag.

```xml
<uses-permission android:name="android.permission.NFC" />
<uses-feature android:name="android.hardware.nfc" android:required="true"/>
```

The `nfc_manager` plugin handles tag discovery and session management, so you
don't need to add any specific intent filters to your activities.

### iOS Setup

For iOS, you need to configure the following in your project:

1. **Enable NFC Capability**:
   In Xcode, open your project settings, go to the "Signing & Capabilities"
   tab, and add the "Near Field Communication Tag Reading" capability.

2. **Info.plist**:
   Add the `NFCReaderUsageDescription` key to your `Info.plist` file. This is
   the message that will be shown to the user when the app requests permission
   to use NFC.

   ```xml
   <key>NFCReaderUsageDescription</key>
   <!-- markdownlint-disable-next-line MD013 -->
   <string>We use Near Field Communication (NFC) to wirelessly transfer your selected image to the e-ink display. Access is required to update the screen.</string>
   ```

   You also need to add the
   `com.apple.developer.nfc.readersession.iso7816.select-identifiers` key. This
   is an array of Application IDs (AIDs) that your app is allowed to communicate
   with. The badge will not be detected if the AID is not in this list.

   ```xml
   <key>com.apple.developer.nfc.readersession.iso7816.select-identifiers</key>
   <array>
     <string>A0000002471001</string>
   </array>
   ```

3. **Entitlements**:
   Add the `com.apple.developer.nfc.readersession.formats` key to your
   `.entitlements` file to specify the NFC tag formats your app can read.

   ```xml
   <key>com.apple.developer.nfc.readersession.formats</key>
   <array>
     <string>TAG</string>
   </array>
   ```

### High-Level Writing Process

The process of writing an image to the badge over NFC involves the following
steps:

1. **Establish Communication**: The app discovers the NFC tag and establishes a
   connection.
2. **Get Badge Specification**: The app reads the badge's specifications to
   determine the screen size and color palette.
3. **Image Conversion**: The image is converted into a format suitable for the
   badge, including dithering and cropping.
4. **Data Transfer**: The image data is sent to the badge in small chunks.
5. **Termination**: The connection is closed once the data transfer is complete.

This package handles all of these steps for you.

### Troubleshooting

If you encounter issues with writing to the badge, here are a few things to
check:

- **Device NFC Support**: Ensure that the device you are using has NFC
  capabilities and that it is enabled.
- **Permissions**: Double-check that all the necessary permissions and
  configurations are correctly set up for both Android and iOS.
- **Tag Position**: The position of the NFC antenna varies from device to
  device. Try moving the badge around the back of your phone to find the sweet
  spot.
- **Badge Power**: If you are using a badge with a battery, make sure it is
  charged.

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
