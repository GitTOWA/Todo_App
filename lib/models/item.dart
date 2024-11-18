class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      // ToDo(id: '01', todoText: 'Buy case', isDone: true),
      // ToDo(id: '02', todoText: 'Buy iPhone', isDone: true),
      // ToDo(id: '03', todoText: 'Buy iPad'),
      // ToDo(id: '04', todoText: 'Buy MacBook', isDone: true),
    ];
  }
}
