import 'package:flutter/material.dart';
import '../data/colors.dart';
import "../models/todo.dart";

class ToDoItem extends StatefulWidget {
  const ToDoItem({
    super.key,
    required this.todo,
    required this.onDeleteItem,
  });

  final ToDo todo;
  // TODO: add proper type annotation
  final onDeleteItem;

  @override
  State<ToDoItem> createState() => _ToDoItem();
}

class _ToDoItem extends State<ToDoItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () => setState(() => widget.todo.isDone = !widget.todo.isDone),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5,
        ),
        tileColor: fgColor,
        leading: Icon(
          widget.todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: buttonBlue,
        ),
        title: Text(
          widget.todo.text,
          style: TextStyle(
            fontSize: 16,
            color: textColor,
            decoration: widget.todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 12),
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: const Color.fromARGB(177, 255, 41, 41),
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: fgColor,
            iconSize: 18,
            icon: const Icon(Icons.delete),
            onPressed: () {
              widget.onDeleteItem(widget.todo.id);
            },
          ),
        ),
      ),
    );
  }
}
