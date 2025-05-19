import 'package:flutter/material.dart';
import 'package:ncert_app/routes/app_routes.dart';
import 'package:ncert_app/core/utils/screen_manager.dart';  // Import the screen manager file

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        // Initialize ScreenManager
        ScreenManager.init(context: context, designWidth: 375, designHeight: 812);

        return MaterialApp(
          title: 'Ncert All in One Solutions',
          theme: ThemeData(
            brightness: Brightness.light,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
          ),
          themeMode: ThemeMode.light,
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.splashScreen,
          onGenerateRoute: AppRoutes.generateRoute,
        );
      },
    );
  }
}
