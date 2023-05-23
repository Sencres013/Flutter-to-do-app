class ToDo {
  int id;
  String text;
  bool isDone;

  ToDo({
    required this.id,
    required this.text,
    this.isDone = false,
  });

  static int latestId = 1;
  static List<ToDo> todoList = [];
}
