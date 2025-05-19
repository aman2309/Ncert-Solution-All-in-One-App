import 'package:flutter/material.dart';
import 'package:ncert_app/core/theme/color.dart';
import 'package:ncert_app/core/theme/my_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final List<Widget>? actions;
  final Color backgroundColor;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.showBackButton = true,
    this.actions,
    this.backgroundColor = Colors.cyan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: backgroundColor,
      centerTitle: true,
      automaticallyImplyLeading: showBackButton,
      title: Text(
        title,
        style:  MyFonts.mainTextFont(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: AppColors.black,
        ),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
