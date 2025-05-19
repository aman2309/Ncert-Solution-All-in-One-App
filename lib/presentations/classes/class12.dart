import 'package:flutter/material.dart';

import '../../Custom/CustomContainer.dart';


class Class12 extends StatefulWidget {
  const Class12({Key? key}) : super(key: key);

  @override
  State<Class12> createState() => _Class12State();
}

class _Class12State extends State<Class12> {
  double height = 0.14;
  double width = 0.42;
  double topPadding = 15;
  double leftPadding = 20;
  Color backgroundColor = Colors.white;
  Color appBarColor = Colors.deepPurple;
  final String _appbarTitle = "Class 12";

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
        body: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 10, right: 10),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomContainer(
                  onTap: () {},
                  height: size.height * height,
                  width: size.width * width,
                  image: "assets/images/chemistry.png",
                  text: "Chemistry",
                ),
                CustomContainer(
                  onTap: () {},
                  height: size.height * height,
                  width: size.width * width,
                  image: "assets/images/physics.png",
                  text: "Physics",
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
            const SizedBox(
              height: 30,
            ),
            CustomContainer(
                height: size.height * height,
                width: size.width * width,
                image: "assets/images/hindi.png",
                text: 'Hindi',
                onTap: () {})
          ]),
        ));
  }
}
