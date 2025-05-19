import 'package:flutter/material.dart';

import '../../Custom/CustomChapterContainer.dart';

class ChaptersENG extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ChaptersENGState();
  }
}

class ChaptersENGState extends State<ChaptersENG> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          centerTitle: true,
          title: const Text("Chapters"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: SizedBox(
                  height: 112,
                  width: 850,
                  child: const CustomChapterContainer(
                    unitName: 'Unit 1',
                    chapterName: 'Good Morning',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: SizedBox(
                  height: 112,
                  width: 850,
                  child: const CustomChapterContainer(
                    unitName: 'Unit 1',
                    chapterName: 'Good Morning',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: SizedBox(
                  height: 112,
                  width: 850,
                  child: const CustomChapterContainer(
                    unitName: 'Unit 1',
                    chapterName: 'Good Morning',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: SizedBox(
                  height: 112,
                  width: 850,
                  child: const CustomChapterContainer(
                    unitName: 'Unit 1',
                    chapterName: 'Good Morning',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: SizedBox(
                  height: 112,
                  width: 850,
                  child: const CustomChapterContainer(
                    unitName: 'Unit 1',
                    chapterName: 'Good Morning',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: SizedBox(
                  height: 112,
                  width: 850,
                  child: const CustomChapterContainer(
                    unitName: 'Unit 1',
                    chapterName: 'Good Morning',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: SizedBox(
                  height: 112,
                  width: 850,
                  child: const CustomChapterContainer(
                    unitName: 'Unit 1',
                    chapterName: 'Good Morning',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: SizedBox(
                  height: 112,
                  width: 850,
                  child: const CustomChapterContainer(
                    unitName: 'Unit 1',
                    chapterName: 'Good Morning',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14),
                child: SizedBox(
                  height: 112,
                  width: 850,
                  child: const CustomChapterContainer(
                    unitName: 'Unit 1',
                    chapterName: 'Good Morning',
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
