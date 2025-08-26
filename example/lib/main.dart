import 'dart:typed_data';

import 'package:example/nullability_extensions.dart';
import 'package:example/template_editor_screen.dart';
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
  BadgeImage? image;

  Uint8List? get imageBytes => image?.let((image) => image.getImageBytes());

  Uint8List? get ditheredImageBytes =>
      image?.let((image) => image.getImageBytes(DitherKernel.atkinson));

  @override
  void initState() {
    final image = img.Image(width: 240, height: 416);
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
    this.image = FriendsBadge.createBadgeImage(image);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Friends Badge Example'),
      ),
      body: ListView(
        children: [
          if (image case final image?)
            ElevatedButton(
              onPressed: () async {
                await WaitingForNfcTap.showLoading(
                  context: context,
                  job: FriendsBadge.nfcBadgeRepository.writeOverNfc(
                    image,
                  ),
                );
              },
              child: const Text('Write over NFC'),
            ),
          ElevatedButton(
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TemplateEditorScreen(),
                ),
              );
              if (result is img.Image) {
                setState(() {
                  image = FriendsBadge.createBadgeImage(result);
                });
              }
            },
            child: const Text('Create Template'),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                spacing: 24,
                children: [
                  if (imageBytes case final imageBytes?)
                    Image.memory(
                      imageBytes,
                      height: 300,
                    ),
                  if (ditheredImageBytes case final ditheredImageBytes?)
                    Image.memory(
                      ditheredImageBytes,
                      height: 300,
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
