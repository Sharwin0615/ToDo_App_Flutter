import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  final _mybox = Hive.box('mybox');

  void createInitialData() {
    toDoList = [
      ["Jogging", false],
      ["HomeWork", false],
    ];
  }

  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  void updateDatabase() {
    _mybox.put("TODOLIST", toDoList);
  }
}
