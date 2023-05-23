import 'package:flutter/material.dart';
import '../data/colors.dart';
import "../models/todo.dart";

class ToDoItem extends StatelessWidget {
  const ToDoItem({
    super.key,
    required this.todo,
  });

  final ToDo todo;

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
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Color.fromARGB(178, 28, 119, 255),
        ),
        title: Text(
          todo.text,
          style: TextStyle(
            fontSize: 16,
            color: textColor,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
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
