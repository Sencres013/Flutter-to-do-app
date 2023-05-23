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
  static List<ToDo> todoList = [
    ToDo(id: 0, text: "Lorem Ipsum", isDone: false),
    ToDo(id: 1, text: "Lorem Ipsum", isDone: true),
  ];
}
