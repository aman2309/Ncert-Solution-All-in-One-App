import 'dart:async';


import 'package:flutter/material.dart';

import '../Custom/CustomContainer.dart';
import '../classes/Class 10/class10.dart';
import '../classes/Class3/class3.dart';
import '../classes/class11.dart';
import '../classes/class12.dart';
import '../classes/class4.dart';
import '../classes/class5.dart';
import '../classes/class6.dart';
import '../classes/class7.dart';
import '../classes/class8.dart';
import '../classes/class9.dart';

class Classes extends StatefulWidget {
  const Classes({Key? key}) : super(key: key);

  @override
  State<Classes> createState() => _ClassesState();
}

class _ClassesState extends State<Classes> {
  double height = 0.14;
  double width = 0.42;
  double topPadding = 15;
  double leftPadding = 20;
  Color color = Colors.white70;
  bool isLoading = true;
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {});

    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          centerTitle: true,
          title: const Text("Ncert Solutions", style: TextStyle(fontSize: 18)),
        ),
        body: Center(
          child: isLoading
              ? const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      backgroundColor: Colors.greenAccent,
                      color: Colors.cyan,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Please Wait...',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomContainer(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Class12()));
                            },
                            height: Size.height * height,
                            width: Size.width * width,
                            image: "assets/images/12.png",
                            text: "Class 12",
                          ),
                          CustomContainer(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Class11()));
                            },
                            height: Size.height * height,
                            width: Size.width * width,
                            image: "assets/images/11.png",
                            text: "Class 11",
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomContainer(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Class10()));
                                },
                                height: Size.height * height,
                                width: Size.width * width,
                                image: "assets/images/10.png",
                                text: "Class 10",
                              ),
                              CustomContainer(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Class9()));
                                },
                                height: Size.height * height,
                                width: Size.width * width,
                                image: "assets/images/9.png",
                                text: "Class 9",
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomContainer(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Class8()));
                                },
                                height: Size.height * height,
                                width: Size.width * width,
                                image: "assets/images/8.png",
                                text: "Class 8",
                              ),
                              CustomContainer(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Class7()));
                                },
                                height: Size.height * height,
                                width: Size.width * width,
                                image: "assets/images/7.png",
                                text: "Class 7",
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomContainer(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Class6()));
                                },
                                height: Size.height * height,
                                width: Size.width * width,
                                image: "assets/images/6.png",
                                text: "Class 6",
                              ),
                              CustomContainer(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Class5()));
                                },
                                height: Size.height * height,
                                width: Size.width * width,
                                image: "assets/images/5.png",
                                text: "Class 5",
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomContainer(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Class4()));
                                },
                                height: Size.height * height,
                                width: Size.width * width,
                                image: "assets/images/4.png",
                                text: "Class 4",
                              ),
                              CustomContainer(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Class3()));
                                },
                                height: Size.height * height,
                                width: Size.width * width,
                                image: "assets/images/3.png",
                                text: "Class 3",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ]),
        ));
  }
}
