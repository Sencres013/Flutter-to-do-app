import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "../data/colors.dart";

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: bgColor,
      elevation: 0,
      title: const Row(
        children: [
          Icon(
            Icons.menu,
            color: fgColor,
            size: 30,
          ),
        ],
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
