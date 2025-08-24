import 'dart:typed_data';

import 'package:example/waiting_for_nfc_tap.dart';
import 'package:flutter/material.dart';
import 'package:friends_badge/friends_badge.dart';
import 'package:image/image.dart' as img;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Friends Badge Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late img.Image _image;
  late img.Image _image2;

  Uint8List get bytes => Uint8List.fromList(img.encodePng(_image));

  Uint8List get bytes2 => Uint8List.fromList(img.encodePng(_image2));

  @override
  void initState() {
    final image = _image = img.Image(width: 240, height: 416);
    for (var y = 0; y < image.height; y++) {
      for (var x = 0; x < image.width; x++) {
        // Draw circles with radius 8 in a grid pattern
        final centerX = ((x ~/ 32) * 32) + 16;
        final centerY = ((y ~/ 32) * 32) + 16;
        final dx = x - centerX;
        final dy = y - centerY;
        if (dx * dx + dy * dy <= 128) {
          // radius^2 = 8*8 = 64
          image.setPixel(x, y, img.ColorRgb8(255, 255, 0));
        } else {
          image.setPixel(x, y, img.ColorRgb8(0, 0, 0));
        }
      }
    }

    _image2 = ImageConverter().noDither(image, ColorPalette.blackWhiteRed);
    // for (var y = 0; y < image.height; y++) {
    //   for (var x = 0; x < image.width; x++) {
    //     final oldPixel = image.getPixel(x, y);
    //     _image2.setPixel(x, y, oldPixel);
    //   }
    // }

    // final image = _image = img.Image(width: 256, height: 256);
    // Iterate over its pixels
    // for (final pixel in image) {
    // Set the pixels red value to its x position value,
    // creating a gradient.
    // pixel
    //   ..r = pixel.x
    // Set the pixels green value to its y position value.
    // ..g = pixel.y;
    // }
    super.initState();
  }

  final BadgeRepository _badgeRepository = BleBadgeRepository();
  List<String> _devices = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Friends Badge Example'),
      ),
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              _badgeRepository.scanForBleDevices().listen((devices) {
                setState(() {
                  _devices = devices;
                });
              });
            },
            child: const Text('Scan for BLE Devices'),
          ),
          ElevatedButton(
            onPressed: () async {
              await WaitingForNfcTap.showLoading(
                context: context,
                job: NfcBadgeRepository().writeOverNfc(
                  _image,
                ),
              );
            },
            child: const Text('Write over NFC'),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                spacing: 24,
                children: [
                  Image.memory(
                    bytes,
                    height: 300,
                  ),
                  Image.memory(
                    bytes2,
                    height: 300,
                  ),
                ],
              ),
            ),
          ),
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: _devices.length,
          //     itemBuilder: (context, index) {
          //       return ListTile(
          //         title: Text(_devices[index]),
          //         onTap: () {
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //               builder: (context) =>
          //                   WriteScreen(deviceAddress: _devices[index]),
          //             ),
          //           );
          //         },
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
