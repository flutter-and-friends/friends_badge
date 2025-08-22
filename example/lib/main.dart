import 'package:flutter/material.dart';
import 'package:friends_badge/friends_badge.dart';
import 'package:friends_badge_example/template_editor_screen.dart';
import 'package:friends_badge_example/write_screen.dart';

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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TemplateEditorScreen()),
              );
            },
            child: const Text('Template Editor'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WriteScreen()),
              );
            },
            child: const Text('Write to Badge'),
          ),
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
          Expanded(
            child: ListView.builder(
              itemCount: _devices.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_devices[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}