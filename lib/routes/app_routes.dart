import 'package:flutter/material.dart';
import 'package:ncert_app/presentations/home_screen.dart';
import 'package:ncert_app/presentations/notifications_screen.dart';
import 'package:ncert_app/presentations/splash_screen.dart';

import '../presentations/classes_screen.dart';


class AppRoutes {
  static const String splashScreen = '/splash';
  static const String homeScreen = '/home';
  static const String classScreen = '/classes';
  static const String notifications = '/notifications';
  static const String subjectScreen = '/subjects';
  static const String chapterScreen = '/chapters';
  static const String notesScreen = '/notes';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

        case homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case notifications:
        return MaterialPageRoute(builder: (_) => const NotificationsScreen());


      case classScreen:
        return MaterialPageRoute(
          builder: (_) => ClassScreen(),
        );

      // case subjectScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => SubjectScreen(classId: args as String?),
      //   );
      //
      // case chapterScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => ChapterScreen(subjectId: args as String?),
      //   );
      //
      // case notesScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => NotesScreen(chapterId: args as String?),
      //   );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Route not found')),
          ),
        );
    }
  }
}
