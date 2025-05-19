import 'package:flutter/material.dart';

import '../../Custom/CustomContainer.dart';
import 'ChaptersENG.dart';
import 'ChaptersEnvironmental.dart';
import 'ChaptersHINDI.dart';
import 'ChaptersMATH.dart';

class Class3 extends StatefulWidget {
  const Class3({Key? key}) : super(key: key);

  @override
  State<Class3> createState() => _Class3State();
}

class _Class3State extends State<Class3> {
  double height = 0.14;
  double width = 0.42;
  double topPadding = 15;
  double leftPadding = 20;
  Color backgroundColor = Colors.white;
  Color appBarColor = Colors.deepPurple;
  final String _appbarTitle = "Class 3";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: appBarColor,
          centerTitle: true,
          title: Text(_appbarTitle, style: const TextStyle(fontSize: 18)),
        ),
        body: Column(children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomContainer(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChaptersEnvironmental()));
                },
                height: size.height * height,
                width: size.width * width,
                image: "assets/images/env.png",
                text: "Environmental",
              ),
              CustomContainer(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChaptersHINDI()));
                },
                height: size.height * height,
                width: size.width * width,
                image: "assets/images/hindi.png",
                text: "Hindi",
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomContainer(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChaptersENG()));
                },
                height: size.height * height,
                width: size.width * width,
                image: "assets/images/english.png",
                text: "English",
              ),
              CustomContainer(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChaptersMATH()));
                },
                height: size.height * height,
                width: size.width * width,
                image: "assets/images/math.png",
                text: "Maths",
              ),
            ],
          ),
        ]));
  }
}
