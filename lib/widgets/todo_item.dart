import 'package:flutter/material.dart';
import '../data/colors.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        tileColor: fgColor,
        leading: Icon(
          Icons.check_box,
          color: Color.fromARGB(178, 28, 119, 255),
        ),
        title: Text(
          "Lorem ipsum",
          style: TextStyle(
            fontSize: 16,
            color: textColor,
            decoration: TextDecoration.lineThrough,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: Color.fromARGB(177, 255, 41, 41),
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: fgColor,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
