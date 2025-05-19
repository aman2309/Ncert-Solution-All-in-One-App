import 'package:flutter/material.dart';

class Customdrawer extends StatefulWidget {
  final Color background;
  final String drawerName;
  final String Item1;
  final String Item2;
  final String Item3;
  final String Item4;
  final String Item5;

  const Customdrawer(
      {Key? key,
      required this.background,
      required this.Item1,
      required this.Item2,
      required this.drawerName,
      required this.Item3,
      required this.Item4,
      required this.Item5})
      : super(key: key);

  @override
  State<Customdrawer> createState() => _CustomdrawerState();
}

class _CustomdrawerState extends State<Customdrawer> {
  bool _iconBool = false;
  final IconData _iconlight = Icons.wb_sunny;
  final IconData _iconDark = Icons.dark_mode_outlined;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: widget.background,
            ),
            child: Text(widget.drawerName,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          ListTile(
            leading: const Icon(Icons.theater_comedy_outlined),
            title: Text(widget.Item1),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: Icon(_iconBool ? _iconDark : _iconlight),
            title: Text(widget.Item2),
            onTap: () {
              setState(() {
                _iconBool = !_iconBool;
              });
            },
          ),
          ListTile(
            leading: const Icon(Icons.feedback_outlined),
            title: Text(widget.Item3),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: Text(widget.Item4),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            leading: const Icon(Icons.star_rate_outlined),
            title: Text(widget.Item5),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}
