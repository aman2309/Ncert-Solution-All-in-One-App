import 'dart:async';

import 'package:flutter/material.dart';

class DownloadingButton extends StatefulWidget {
  const DownloadingButton({Key? key}) : super(key: key);
  void update() {}

  @override
  State<DownloadingButton> createState() => _DownloadingButtonState();
}

class _DownloadingButtonState extends State<DownloadingButton> {
  late double _initial = 0.0;

  void _update() {
    Timer.periodic(Duration(milliseconds: 500), (timer) {
      setState(() {
        _initial = _initial + 0.01;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    _update();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LinearProgressIndicator(
            valueColor: const AlwaysStoppedAnimation(Colors.green),
            backgroundColor: Colors.blueAccent,
            minHeight: 20,
            value: _initial,
          )
        ],
      ),
    );
  }
}
