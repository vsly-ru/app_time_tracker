import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:auto_time_tracker/core/theme/dark.dart';
import 'package:flutter/material.dart';
import 'package:system_windows/system_windows.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: fDartTheme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _info = '';

  Timer? _timer;
  final _systemWindows = SystemWindows();

  @override
  void initState() {
    _timer = Timer.periodic(const Duration(milliseconds: 1280), periodic);
    log('started');
    super.initState();
    periodic(_timer!);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void periodic(Timer timer) async {
    // final hasScreenRecordingPermissions = Platform.isMacOS
    //     ? await _systemWindows.hasScreenRecordingPermission()
    //     : true;

    final start = DateTime.now();
    final activeApps = (await _systemWindows.getActiveApps())
        .where((element) => element.isActive);
    final finish = DateTime.now();
    final SystemWindow? active =
        activeApps.isNotEmpty ? activeApps.first : null;
    _setInfo('${finish.difference(start).inMilliseconds}ms\n${active?.name}');
  }

  void _setInfo(String i) {
    setState(() {
      _info = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _info,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
