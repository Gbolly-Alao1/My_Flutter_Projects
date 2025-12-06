import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  const TasksTile({
    super.key,
    required this.taskTitle,
    required this.isChecked,
    required this.checkboxCallback,
    required this.longPressCallback,
  });

  final bool isChecked;
  final String taskTitle;
  final ValueChanged<bool?> checkboxCallback;
  final void Function() longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallback,
      ),
    );
  }
}
