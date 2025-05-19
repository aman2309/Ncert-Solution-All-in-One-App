import 'package:flutter/material.dart';
import 'package:ncert_app/core/theme/color.dart';
import 'package:ncert_app/routes/app_routes.dart';


import '../core/theme/my_fonts.dart';
import '../widgets/CustomContainer.dart';
import '../widgets/CustomDrawer.dart';
import 'classes_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> listItems = [];

  @override
  void initState() {
    super.initState();

    listItems.addAll([
      {
        'text': 'Ncert Solutions',
        'image': 'assets/images/ncert.png',
        'onTap': (BuildContext context) {
          Navigator.pushNamed(context, AppRoutes.classScreen);
        }
      },
      {
        'text': 'RD Sharma',
        'image': 'assets/images/rd.png',
        'onTap': showComingSoon
      },
      {
        'text': 'Rs Aggarwal',
        'image': 'assets/images/rs.png',
        'onTap': showComingSoon
      },
      {
        'text': 'S Chand Solutions',
        'image': 'assets/images/schand.png',
        'onTap': showComingSoon
      },
      {
        'text': 'HC Verma Solutions',
        'image': 'assets/images/hc.png',
        'onTap': showComingSoon
      },
      {
        'text': 'Dk Goel Solutions',
        'image': 'assets/images/dk.png',
        'onTap': showComingSoon
      },
      {
        'text': 'TS Grewal Solutions',
        'image': 'assets/images/ts.png',
        'onTap': showComingSoon
      },
      {
        'text': 'TR Jain Solutions',
        'image': 'assets/images/tr.png',
        'onTap': showComingSoon
      },
      {
        'text': 'Frank Solutions',
        'image': 'assets/images/frank.png',
        'onTap': showComingSoon
      },
      {
        'text': 'Programming',
        'image': 'assets/images/pro.png',
        'onTap': showComingSoon
      },
    ]);
  }

  static void showComingSoon(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Coming Soon!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.white,
      drawer: const Customdrawer(
        background: Colors.cyan,
        drawerName: "Ncert & Refrence Books Solutions",
        Item1: "Change Theme",
        Item2: "Dark Mode",
        Item3: "Feedback",
        Item4: "Share This app",
        Item5: "Rate This app To Support Us",
      ),
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, AppRoutes.notifications);
            },

              child: Icon(Icons.notifications_active_outlined)),
          const SizedBox(width: 15),
        ],
        toolbarHeight: 60,
        centerTitle: true,
        title: Text(
          textAlign: TextAlign.center,
          "Ncert & Refrence Book \nSolutions",
          style: MyFonts.mainTextFont(fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.separated(
          itemCount: listItems.length,
          separatorBuilder: (context, index) => const SizedBox(height: 15),
          itemBuilder: (context, index) {
            final item = listItems[index];
            return CustomContainer(
              onTap: () => item['onTap'](context),
              height: size.height * 0.12,
              width: size.width * 0.90,
              image: item['image'],
              text: item['text'],
              subText: 'Class 3-12', // optional

            );
          },
        ),
      ),
    );
  }
}
