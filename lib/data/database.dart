import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference our box
  final _box = Hive.box("box");

  // run this method if this is the 1st time ever opening this app
  void creatInitialData() {
    toDoList = [
      ["first", false],
      ["second", true]
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _box.get("TODOLIST");
  }

  // update the database
  void updateDatabase() {
    _box.put("TODOLIST", toDoList);
  }
}
