import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ncert_app/core/theme/my_fonts.dart';

import '../core/theme/color.dart';
import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeIn;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _fadeIn = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FadeTransition(
        opacity: _fadeIn,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Icon(
                Icons.menu_book_rounded,
                size: 100,
                color: AppColors.cyan,
              ),
              const SizedBox(height: 24),
               Text(
                'NCERT Solution',
                style: MyFonts.mainTextFont(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              const SizedBox(height: 8),
               Text(
                'All-in-One Learning Companion',
                style: MyFonts.mainTextFont(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 32),
              const CupertinoActivityIndicator(radius: 15),
            ],
          ),
        ),
      ),
    );
  }
}
