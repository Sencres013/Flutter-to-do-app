import "package:flutter/material.dart";
import "package:todoapp/data/colors.dart";
import "package:todoapp/widgets/app_bar.dart";
import "package:todoapp/widgets/search_box.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Column(
          children: [
            SearchBox(),
            ListView(
              shrinkWrap: true,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50, bottom: 20),
                  child: Text(
                    "Current ToDos",
                    style: TextStyle(
                      color: white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    )
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
