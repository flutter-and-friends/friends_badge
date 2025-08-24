import 'dart:typed_data';

import 'package:example/write_screen.dart';
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

  Uint8List get bytes => Uint8List.fromList(img.encodePng(_image));

  @override
  void initState() {
    final image = _image = img.Image(width: 240, height: 416);
    for (var y = 0; y < image.height; y++) {
      for (var x = 0; x < image.width; x++) {
        if ((x ~/ 8 + y ~/ 8).isEven) {
          image.setPixel(x, y, img.ColorRgb8(0, 0, 0));
        } else {
          image.setPixel(x, y, img.ColorRgb8(255, 0, 0));
        }
      }
    }

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
      body: Column(
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
              await NfcBadgeRepository().writeOverNfc(
                ImageConverter().convertImage(
                  _image,
                  ColorPalette.blackWhiteRed,
                ),
              );
            },
            child: const Text('Write over NFC'),
          ),
          Image.memory(bytes),
          Expanded(
            child: ListView.builder(
              itemCount: _devices.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_devices[index]),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            WriteScreen(deviceAddress: _devices[index]),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
