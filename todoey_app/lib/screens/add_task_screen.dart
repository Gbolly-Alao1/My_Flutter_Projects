import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;

    return Padding(
      padding: const EdgeInsets.only(left: 70.0, right: 70.0, top: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(height: 30.0),
          ElevatedButton(
            onPressed: () {
              Provider.of<TaskData>(
                context,
                listen: false,
              ).addTask(newTaskTitle!);
              Navigator.pop(context);
            },
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.lightBlueAccent),
              elevation: WidgetStateProperty.all(5.0),
              overlayColor: WidgetStateProperty.all(Colors.blueAccent),
            ),
            child: Text(
              'Add',
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
