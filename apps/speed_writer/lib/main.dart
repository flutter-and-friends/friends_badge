import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:ui' as ui;

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
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
      title: 'Badge Writer',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const BadgeWriterScreen(),
    );
  }
}

class BadgeWriterScreen extends StatefulWidget {
  const BadgeWriterScreen({super.key});

  @override
  State<BadgeWriterScreen> createState() => _BadgeWriterScreenState();
}

class _BadgeWriterScreenState extends State<BadgeWriterScreen> {
  final GlobalKey _badgeKey = GlobalKey();
  final List<(String, String)> _attendees = [];
  int _currentAttendeeIndex = 0;
  String? _attendeeName;
  String? _flair;
  String? _randomImagePath;
  bool _isWriting = false; // New state variable

  @override
  void initState() {
    super.initState();
    _loadAttendees();
    _loadRandomImage();
  }

  Future<void> _loadAttendees() async {
    final csvContent = await rootBundle.loadString('assets/attendees.csv');
    final lines = LineSplitter.split(csvContent);
    setState(() {
      _attendees.addAll([
        for (final line in lines)
          if (line.trim().isNotEmpty) (line.split(',')[0], line.split(',')[1]),
      ]);
    });
  }

  Future<void> _loadRandomImage() async {
    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final manifestMap = json.decode(manifestContent) as Map<String, dynamic>;

    final paths = manifestMap.keys
        .where((String key) => key.toLowerCase().endsWith('.png'))
        .toList();

    if (paths.isNotEmpty) {
      final random = Random();
      setState(() {
        _randomImagePath = paths[random.nextInt(paths.length)];
      });
    }
  }

  Future<void> _writeToNfc() async {
    setState(() {
      _isWriting = true; // Start the loader
    });

    try {
      final renderObject = _badgeKey.currentContext?.findRenderObject();
      if (renderObject is RenderRepaintBoundary) {
        final image = await convertUiImageToImagePackage(
          await renderObject.toImage(),
        );
        await WaitingForNfcTap.showLoading(
          context: context,
          job: BadgeImage(image).writeToBadge(),
        );
      }
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      debugPrint('Error writing to NFC: $e');
    } finally {
      setState(() {
        _isWriting = false; // Stop the loader
      });
    }
  }

  Future<img.Image> convertUiImageToImagePackage(ui.Image uiImage) async {
    // Convert ui.Image to ByteData in RGBA format
    final byteData = await uiImage.toByteData();

    if (byteData == null) {
      throw Exception('Failed to convert ui.Image to ByteData');
    }

    // Get the raw bytes
    final bytes = byteData.buffer.asUint8List();

    // Create img.Image from raw RGBA bytes
    final image = img.Image.fromBytes(
      width: uiImage.width,
      height: uiImage.height,
      bytes: bytes.buffer,
      numChannels: 4, // RGBA = 4 channels
    );

    return image;
  }

  void _nextAttendee() {
    setState(() {
      _currentAttendeeIndex = (_currentAttendeeIndex + 1) % _attendees.length;
      _loadRandomImage();
    });
  }

  @override
  Widget build(BuildContext context) {
    final attendeeName =
        _attendeeName ??
        (_attendees.isNotEmpty
            ? _attendees[_currentAttendeeIndex].$1
            : 'Loading...');
    final attendeeFlair =
        _flair ??
        (_attendees.isNotEmpty
            ? _attendees[_currentAttendeeIndex].$2
            : 'Loading...');

    return Scaffold(
      appBar: AppBar(title: const Text('Badge Writer')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RepaintBoundary(
              key: _badgeKey,
              child: Stack(
                children: [
                  Container(
                    width: 260,
                    color: Colors.white,
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        if (_randomImagePath != null)
                          SizedBox(
                            width: 256,
                            height: 256,
                            child: Image.asset(_randomImagePath!),
                          ),
                        SizedBox(
                          height: 50,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              attendeeName,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: Image.asset('assets/logo_simple.png'),
                        ),
                        const SizedBox(width: 260, height: 20),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 40,
                    right: -60,
                    child: Transform.rotate(
                      angle: pi / 4,
                      child: Container(
                        color: Colors.red,
                        width: 240,
                        child: Text(
                          attendeeFlair,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _isWriting
                  ? null
                  : _writeToNfc, // Disable button while writing
              child: _isWriting
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    )
                  : const Text('Write to badge'),
            ),
            ElevatedButton(
              onPressed: _nextAttendee,
              child: const Text('Next'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _showEditDialog,
                  child: const Text('Edit'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _pickAndLoadCsv,
                  child: const Text('CSV'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showEditDialog() async {
    final nameController = TextEditingController(text: _attendeeName ?? '');
    final flairController = TextEditingController(text: _flair ?? '');

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Edit Attendee'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: flairController,
                decoration: const InputDecoration(labelText: 'Flair'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  _attendeeName = null;
                  _flair = null;
                });
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _attendeeName = nameController.text;
                  _flair = flairController.text;
                });
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _pickAndLoadCsv() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['csv'],
    );

    if (result != null && result.files.isNotEmpty) {
      final file = result.files.first;
      final csvContent = await File(file.path!).readAsString();

      final lines = LineSplitter.split(csvContent);
      setState(() {
        _attendees.clear();
        _attendees.addAll([
          for (final line in lines)
            if (line.trim().isNotEmpty)
              (line.split(',')[0], line.split(',')[1]),
        ]);
        _currentAttendeeIndex = 0;
        _attendeeName = null;
        _flair = null;
      });
    }
  }
}
