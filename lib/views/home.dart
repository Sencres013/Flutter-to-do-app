import "package:flutter/material.dart";
import "package:todoapp/widgets/app_bar.dart";
import "package:todoapp/widgets/search_box.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
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
