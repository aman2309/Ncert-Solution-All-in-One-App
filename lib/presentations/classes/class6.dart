import 'package:flutter/material.dart';

import '../../widgets/CustomContainer.dart';


class Class6 extends StatefulWidget {
  const Class6({Key? key}) : super(key: key);

  @override
  State<Class6> createState() => _Class6State();
}

class _Class6State extends State<Class6> {
  double height = 110;
  double width = 180;

  Color backgroundColor = Colors.white;
  Color appBarColor = Color(0xff8f27c7);
  final String _appbarTitle = "Class 6";

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
            )
          ]),
        ));
  }
}
