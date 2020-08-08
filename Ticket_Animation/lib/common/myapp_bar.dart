import 'package:Ticket_Animation/theme.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  CustomAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      title: Text(
        title,
        style: appBarTextStyle,
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50.0);
}
