import 'package:flutter/material.dart';

import '../../Custom/CustomChapterContainer.dart';

class Class10Maths extends StatefulWidget {
  const Class10Maths({Key? key}) : super(key: key);

  @override
  State<Class10Maths> createState() => _Class10MathsState();
}

class _Class10MathsState extends State<Class10Maths> {
  final double _height = 120;
  final double _width = 850;

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff8f27c7),
          centerTitle: true,
          title: const Text("Maths"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: SizedBox(
                  height: _height,
                  width: _width,
                  child: const CustomChapterContainer(
                    chapterName: "Real Numbers",
                    unitName: "Chapter 1-",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: SizedBox(
                  height: _height,
                  width: _width,
                  child: const CustomChapterContainer(
                    chapterName: "Polynomials",
                    unitName: "Chapter 2-",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: SizedBox(
                  height: _height,
                  width: _width,
                  child: const CustomChapterContainer(
                    chapterName: "Pair of Linear Equations in \n Two Variables",
                    unitName: "Chapter 3-",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: SizedBox(
                  height: _height,
                  width: _width,
                  child: const CustomChapterContainer(
                    chapterName: "Quadratic Equations",
                    unitName: "Chapter 4-",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: SizedBox(
                  height: _height,
                  width: _width,
                  child: const CustomChapterContainer(
                    chapterName: "Arithmetic Progressions",
                    unitName: "Chapter 5-",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: SizedBox(
                  height: _height,
                  width: _width,
                  child: const CustomChapterContainer(
                    chapterName: "Triangles",
                    unitName: "Chapter 6-",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: SizedBox(
                  height: _height,
                  width: _width,
                  child: const CustomChapterContainer(
                    chapterName: "Coordinate Geometry",
                    unitName: "Chapter 7-",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: SizedBox(
                  height: _height,
                  width: _width,
                  child: const CustomChapterContainer(
                    chapterName: "Introduction to Trigonometry",
                    unitName: "Chapter 8-",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: SizedBox(
                  height: _height,
                  width: _width,
                  child: const CustomChapterContainer(
                    chapterName: "Some Applications of Trigonometry",
                    unitName: "Chapter 9-",
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
