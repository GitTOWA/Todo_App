// lib/widgets/app_bar.dart
import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: customRed,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
          Container(
            height: 50,
            width: 50,
            child: ClipRRect(
              // borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/towas.png'),
            ),
          ),
        ],
      ),
    );
  }
}
