import "package:flutter/material.dart";
import "../data/colors.dart";
import "../widgets/app_bar.dart";
import "../widgets/search_box.dart";
import "../widgets/todo_item.dart";

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
                      color: fgColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ToDoItem(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
