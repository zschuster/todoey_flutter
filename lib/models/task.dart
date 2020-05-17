import 'package:flutter/cupertino.dart';

class Task {
  bool isDone;
  String taskText;

  Task({@required this.taskText, this.isDone = false});

  void toggleCheckboxState() {
    isDone = !isDone;
  }
}
