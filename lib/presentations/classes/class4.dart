import 'package:flutter/material.dart';

import '../../widgets/CustomContainer.dart';


class Class4 extends StatefulWidget {
  const Class4({Key? key}) : super(key: key);

  @override
  State<Class4> createState() => _Class4State();
}

class _Class4State extends State<Class4> {
  double height = 0.14;
  double width = 0.42;
  double topPadding = 15;
  double leftPadding = 20;
  Color backgroundColor = Colors.white;
  Color appBarColor = Colors.purple;
  final String _appbarTitle = "Class 4";

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
                onTap: () {},
                height: size.height * height,
                width: size.width * width,
                image: "assets/images/env.png",
                text: "Environmental",
              ),
              CustomContainer(
                onTap: () {},
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
                onTap: () {},
                height: size.height * height,
                width: size.width * width,
                image: "assets/images/english.png",
                text: "English",
              ),
              CustomContainer(
                onTap: () {},
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
