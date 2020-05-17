import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task.dart';

class TaskBank extends ChangeNotifier {
  List<Task> taskList = [];

  int get taskCount {
    int taskCount = 0;
    for (Task task in taskList) {
      if (!task.isDone) {
        taskCount += 1;
      }
    }
    return taskCount;
  }

  void addTask({Task task}) {
    taskList.add(task);
    notifyListeners();
  }

  void toggleCheckmark(Task task) {
    task.toggleCheckboxState();
    notifyListeners();
  }

  void deleteTask({int index}) {
    taskList.removeAt(index);
    notifyListeners();
  }
}
