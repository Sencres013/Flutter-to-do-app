import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:todoapp/data/colors.dart";
import "package:todoapp/widgets/search_box.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        title: const Row(
          children: [
            Icon(
              Icons.menu,
              color: white,
              size: 30,
            ),
          ],
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: const Column(
          children: [
            SearchBox(),
          ],
        ),
      ),
    );
  }
}
