import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskText;
  final Function checkboxCallBack;
  final Function deleteCallback;

  TaskTile(
      {@required this.isChecked,
      @required this.taskText,
      @required this.checkboxCallBack,
      @required this.deleteCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskText,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallBack,
        activeColor: Colors.lightBlueAccent,
        checkColor: Colors.white,
      ),
      onLongPress: deleteCallback,
    );
  }
}
