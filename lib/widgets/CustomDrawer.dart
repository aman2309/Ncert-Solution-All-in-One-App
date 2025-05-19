import 'package:flutter/material.dart';
import 'package:ncert_app/core/theme/color.dart';
import 'package:ncert_app/core/theme/my_fonts.dart';

class Customdrawer extends StatefulWidget {
  final Color background;
  final String drawerName;
  final String Item1;
  final String Item2;
  final String Item3;
  final String Item4;
  final String Item5;

  const Customdrawer({
    Key? key,
    required this.background,
    required this.Item1,
    required this.Item2,
    required this.drawerName,
    required this.Item3,
    required this.Item4,
    required this.Item5,
  }) : super(key: key);

  @override
  State<Customdrawer> createState() => _CustomdrawerState();
}

class _CustomdrawerState extends State<Customdrawer> {
  bool _iconBool = false;
  final IconData _iconLight = Icons.wb_sunny_outlined;
  final IconData _iconDark = Icons.dark_mode_outlined;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:AppColors.white,
      child: Column(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [widget.background, Colors.teal],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.menu_book, size: 30, color: Colors.teal),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      widget.drawerName,
                      style:  MyFonts.mainTextFont(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 8),
              children: [
                _buildListTile(
                  icon: Icons.theater_comedy_outlined,
                  title: widget.Item1,
                  onTap: () {},
                ),
                _buildListTile(
                  icon: _iconBool ? _iconDark : _iconLight,
                  title: widget.Item2,
                  onTap: () {
                    setState(() {
                      _iconBool = !_iconBool;
                    });
                  },
                ),
                _buildListTile(
                  icon: Icons.feedback_outlined,
                  title: widget.Item3,
                  onTap: () {},
                ),
                _buildListTile(
                  icon: Icons.share_outlined,
                  title: widget.Item4,
                  onTap: () {},
                ),
                _buildListTile(
                  icon: Icons.star_border_outlined,
                  title: widget.Item5,
                  onTap: () {},
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              '© 2025 NCERT App',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildListTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.teal),
      title: Text(
        title,
        style:  MyFonts.mainTextFont(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.black87,
        ),
      ),
      onTap: onTap,
      hoverColor: Colors.teal.withOpacity(0.1),
      splashColor: Colors.tealAccent.withOpacity(0.2),
    );
  }
}
