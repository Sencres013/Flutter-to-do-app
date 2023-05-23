import "package:flutter/material.dart";
import "../data/colors.dart";
import "../widgets/app_bar.dart";
import "../widgets/search_box.dart";
import "../widgets/todo_item.dart";
import "../models/todo.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  final _todoController = TextEditingController();
  List<ToDo> _foundTodoList = [];

  @override
  void initState() {
    super.initState();
    _foundTodoList = ToDo.todoList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Column(
              children: [
                SearchBox(filterList: _filterList),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 50, bottom: 20),
                        child: const Text(
                          "Current ToDos",
                          style: TextStyle(
                            color: fgColor,
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      for (ToDo todo in _foundTodoList)
                        ToDoItem(
                          todo: todo,
                          onDeleteItem: _deleteTodoItem,
                        )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: fgColor,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10,
                          spreadRadius: 0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: _todoController,
                      decoration: const InputDecoration(
                        hintText: "Add a new todo item",
                        hintStyle: TextStyle(color: textColor),
                        border: InputBorder.none,
                      ),
                      style: const TextStyle(color: textColor),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20, right: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ToDo.todoList.add(ToDo(
                          id: ++ToDo.latestId,
                          text: _todoController.text,
                        ));
                      });

                      _todoController.clear();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: buttonBlue,
                      minimumSize: Size(60, 60),
                      elevation: 10,
                    ),
                    child: const Text("+", style: TextStyle(fontSize: 40)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _deleteTodoItem(int id) {
    setState(() => ToDo.todoList.removeWhere((item) => item.id == id));
  }

  void _filterList(String filter) {
    List<ToDo> results = [];

    if (filter.isEmpty) {
      results = ToDo.todoList;
    } else {
      results = ToDo.todoList
          .where(
              (item) => item.text.toLowerCase().contains(filter.toLowerCase())
          ).toList();
    }

    setState(() => _foundTodoList = results);
  }
}
