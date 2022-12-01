import 'dart:async';
import 'dart:developer';
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
  String info = '';

  Timer? timer;

  @override
  void initState() {
    var systemWindows = SystemWindows();

    timer = Timer.periodic(const Duration(milliseconds: 5000), (_) async {
      final start = DateTime.now();
      final activeApps = (await systemWindows.getActiveApps())
          .where((element) => element.isActive);
      final finish = DateTime.now();
      final SystemWindow? active =
          activeApps.isNotEmpty ? activeApps.first : null;

      _setInfo('${finish.difference(start).inMilliseconds}ms\n${active?.name}');
    });

    log('started');
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void _setInfo(String i) {
    setState(() {
      info = i;
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
              info,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
