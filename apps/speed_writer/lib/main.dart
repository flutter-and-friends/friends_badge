import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:friends_badge/friends_badge.dart';
import 'package:nfc_manager/nfc_manager.dart';
import 'package:path/path.dart' as path;

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
  final List<String> _attendees = [];
  int _currentAttendeeIndex = 0;
  String? _randomImagePath;

  @override
  void initState() {
    super.initState();
    _loadAttendees();
    _loadRandomImage();
  }

  Future<void> _loadAttendees() async {
    final csvFile = File('assets/attendees.csv');
    final csvContent = await csvFile.readAsString();
    setState(() {
      _attendees.addAll(LineSplitter.split(csvContent));
    });
  }

  void _loadRandomImage() {
    final assetsDir = Directory('assets');
    final pngFiles = assetsDir
        .listSync(recursive: true)
        .where((file) => file.path.endsWith('.png'))
        .map((file) => file.path)
        .toList();

    if (pngFiles.isNotEmpty) {
      final random = Random();
      setState(() {
        _randomImagePath = pngFiles[random.nextInt(pngFiles.length)];
      });
    }
  }

  Future<void> _writeToNfc() async {
    try {
      final boundary = RenderRepaintBoundary();
      final renderObject = _badgeKey.currentContext?.findRenderObject();
      if (renderObject is RenderRepaintBoundary) {
        final image = await renderObject.toImage(pixelRatio: 3.0);
        await FriendsBadge.writeOverNfc(image);
      }
    } catch (e) {
      debugPrint('Error writing to NFC: $e');
    }
  }

  void _nextAttendee() {
    setState(() {
      _currentAttendeeIndex = (_currentAttendeeIndex + 1) % _attendees.length;
      _loadRandomImage();
    });
  }

  @override
  Widget build(BuildContext context) {
    final attendeeName = _attendees.isNotEmpty
        ? _attendees[_currentAttendeeIndex]
        : 'Loading...';

    return Scaffold(
      appBar: AppBar(title: const Text('Badge Writer')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RepaintBoundary(
            key: _badgeKey,
            child: Column(
              children: [
                if (_randomImagePath != null) Image.asset(_randomImagePath!),
                Text(attendeeName, style: const TextStyle(fontSize: 24)),
                Image.asset('assets/logo_simple.png'),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: _writeToNfc,
            child: const Text('Write to NFC'),
          ),
          ElevatedButton(
            onPressed: _nextAttendee,
            child: const Text('Next'),
          ),
        ],
      ),
    );
  }
}
