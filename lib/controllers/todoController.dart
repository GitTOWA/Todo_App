// lib/controllers/todo_controller.dart
import 'package:flutter/material.dart';
import 'package:todo_app/models/item.dart';

class ToDoController extends ChangeNotifier {
  final List<ToDo> todosList = ToDo.todoList();
  List<ToDo> _foundToDo = [];
  TextEditingController todoController = TextEditingController();

  // 初期化
  ToDoController() {
    _foundToDo = todosList;
  }

  List<ToDo> get foundToDo => _foundToDo;

  // ToDoの完了状態を切り替える
  void handleToDoChange(ToDo todo) {
    todo.isDone = !todo.isDone;
    notifyListeners();
  }

  // ToDoを削除する
  void deleteToDoItem(String id) {
    todosList.removeWhere((item) => item.id == id);
    notifyListeners();
  }

  // 検索フィルターを実行する
  void runFilter(String enteredKeyword) {
    List<ToDo> results = [];
    if (enteredKeyword.isEmpty) {
      results = todosList;
    } else {
      results = todosList
          .where((item) => item.todoText!
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    _foundToDo = results;
    notifyListeners();
  }

  // 新しいToDoを追加する
  void addToDoItem(String toDo) {
    todosList.add(
      ToDo(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        todoText: toDo,
      ),
    );
    todoController.clear();
    notifyListeners();
  }
}
