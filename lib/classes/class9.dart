import 'package:flutter/material.dart';

import '../Custom/CustomContainer.dart';

class Class9 extends StatefulWidget {
  const Class9({Key? key}) : super(key: key);

  @override
  State<Class9> createState() => _Class9State();
}

class _Class9State extends State<Class9> {
  double height = 110;
  double width = 180;

  Color backgroundColor = Colors.white;
  Color appBarColor = Color(0xff801c8d);
  final String _appbarTitle = "Class 9";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: appBarColor,
          centerTitle: true,
          title: Text(_appbarTitle, style: const TextStyle(fontSize: 18)),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomContainer(
                  onTap: () {},
                  height: height,
                  width: width,
                  image: "assets/images/env.png",
                  text: "Sanskrit",
                ),
                CustomContainer(
                  onTap: () {},
                  height: height,
                  width: width,
                  image: "assets/images/hindi.png",
                  text: "Hindi",
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomContainer(
                        onTap: () {},
                        height: height,
                        width: width,
                        image: "assets/images/english.png",
                        text: "English",
                      ),
                      CustomContainer(
                        onTap: () {},
                        height: height,
                        width: width,
                        image: "assets/images/math.png",
                        text: "Maths",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomContainer(
                          height: height,
                          width: width,
                          image: "assets/images/schand.png",
                          text: "Science",
                          onTap: () {}),
                      CustomContainer(
                          height: height,
                          width: width,
                          image: "assets/images/tr.png",
                          text: "Social Studies",
                          onTap: () {})
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomContainer(
                          height: height,
                          width: width,
                          image: "assets/images/pro.png",
                          text: "Computer",
                          onTap: () {})
                    ],
                  )
                ],
              ),
            )
          ]),
        ));
  }
}
