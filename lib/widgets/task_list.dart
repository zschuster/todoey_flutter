import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task_bank.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskBank>(builder: (context, taskBank, child) {
      return ListView.builder(
          itemCount: taskBank.taskList.length,
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskBank.taskList[index].isDone,
              taskText: taskBank.taskList[index].taskText,
              checkboxCallBack: (bool value) {
                taskBank.toggleCheckmark(taskBank.taskList[index]);
              },
              deleteCallback: () {
                taskBank.deleteTask(index: index);
              },
            );
          });
    });
  }
}
