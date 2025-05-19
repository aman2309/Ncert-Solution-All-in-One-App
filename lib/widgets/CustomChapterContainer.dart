import 'package:flutter/material.dart';

class CustomChapterContainer extends StatefulWidget {
  final String unitName;
  final String chapterName;
  const CustomChapterContainer(
      {Key? key, required this.unitName, required this.chapterName})
      : super(key: key);

  @override
  State<CustomChapterContainer> createState() => _CustomChapterContainerState();
}

class _CustomChapterContainerState extends State<CustomChapterContainer> {
  late bool _isLoading;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white12,
                    border: Border.all(color: Colors.black12)),
                // height: 70.h,
                width: 950,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.unitName,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          widget.chapterName,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 7.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    const LinearProgressIndicator(
                                      backgroundColor: Colors.amber,
                                    );
                                    setState(() {});
                                  },
                                  style: TextButton.styleFrom(
                                    fixedSize: Size.fromWidth(450),
                                    backgroundColor: Colors.cyan,
                                  ),
                                  child: const Text(
                                    "Download",
                                    style: TextStyle(color: Colors.black),
                                  )),
                              TextButton(
                                  onPressed: () {
                                    const LinearProgressIndicator(
                                      backgroundColor: Colors.blueAccent,
                                    );
                                  },
                                  style: TextButton.styleFrom(
                                    fixedSize: Size.fromWidth(220),
                                    backgroundColor: Colors.blueGrey,
                                  ),
                                  child: const Text(
                                    "Online",
                                    style: TextStyle(color: Colors.black),
                                  )),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
