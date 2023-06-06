import 'package:hive/hive.dart';

class TodoDatabase {
  List todoList = [];
  //refrence our box
  final _myBox = Hive.box('mybox');

  // run this method if this is the first time ever opening the app
  void createInitialData() {
    todoList = [
      ["Make Notes", false],
    ];
  }

  // load data from database
  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  // update database
  void updateData() {
    _myBox.put("TODOLIST", todoList);
  }
}
