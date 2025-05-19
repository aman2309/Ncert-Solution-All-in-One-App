import 'package:flutter/material.dart';

import '../Custom/CustomContainer.dart';

class Class11 extends StatefulWidget {
  const Class11({Key? key}) : super(key: key);

  @override
  State<Class11> createState() => _Class11State();
}

class _Class11State extends State<Class11> {
  double height = 0.14;
  double width = 0.42;
  double topPadding = 15;
  double leftPadding = 20;
  Color backgroundColor = Colors.white;
  Color appBarColor = Colors.deepPurple;
  final String _appbarTitle = "Class 11";

  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: appBarColor,
          centerTitle: true,
          title: Text(_appbarTitle, style: const TextStyle(fontSize: 18)),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(

              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomContainer(
                      onTap: () {},
                      height: Size.height * height,
                      width: Size.width * width,
                      image: "assets/images/env.png",
                      text: "Environmental",
                    ),
                    CustomContainer(
                      onTap: () {},
                      height: Size.height * height,
                      width: Size.width * width,
                      image: "assets/images/hindi.png",
                      text: "Hindi",
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomContainer(
                            onTap: () {},
                            height: Size.height * height,
                            width: Size.width * width,
                            image: "assets/images/english.png",
                            text: "English",
                          ),
                          CustomContainer(
                            onTap: () {},
                            height: Size.height * height,
                            width: Size.width * width,
                            image: "assets/images/math.png",
                            text: "Maths",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
        ));
  }
}
