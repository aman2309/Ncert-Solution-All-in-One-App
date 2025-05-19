import 'package:flutter/material.dart';

class ChaptersHINDI extends StatefulWidget {
  const ChaptersHINDI({Key? key}) : super(key: key);

  @override
  State<ChaptersHINDI> createState() => _ChaptersHINDIState();
}

class _ChaptersHINDIState extends State<ChaptersHINDI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Chapters"),
      ),
    );
  }
}
