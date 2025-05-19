import 'package:flutter/material.dart';
import 'package:ncert_app/core/theme/color.dart';
import 'package:ncert_app/core/theme/my_fonts.dart';
import '../widgets/custom_app_bar.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> notifications = [
      {
        "title": "Class 10th Time Table Released",
        "description": "CBSE has released the final exam schedule for Class 10.",
        "time": "1 hour ago",
      },
      {
        "title": "Class 12th Result Declared",
        "description": "CBSE has declared the results for Class 12. Check now!",
        "time": "3 hours ago",
      },
      {
        "title": "Syllabus Updated",
        "description": "New syllabus for Class 9 Maths has been uploaded.",
        "time": "Yesterday",
      },
      {
        "title": "New NCERT Notes Available",
        "description": "Chapter 5: 'Acids, Bases and Salts' is now available.",
        "time": "2 days ago",
      },
      {
        "title": "RD Sharma Solutions Updated",
        "description": "Class 10 Chapter 3 Solutions revised as per new pattern.",
        "time": "4 days ago",
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(
        title: "Notifications",
        backgroundColor: AppColors.cyan,
        showBackButton: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: notifications.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final notif = notifications[index];

          return Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.notifications_active_outlined,
                    color: AppColors.cyan, size: 30),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        notif["title"]!,
                        style: MyFonts.mainTextFont(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        notif["description"]!,
                        style: MyFonts.mainTextFont(
                          fontSize: 12,
                          color: AppColors.grey,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        notif["time"]!,
                        style: MyFonts.mainTextFont(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
