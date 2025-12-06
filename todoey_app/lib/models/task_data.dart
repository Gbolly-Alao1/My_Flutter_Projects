import 'dart:collection';

import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Buy groceries'),
    Task(name: 'Go to the barbershop'),
    Task(name: 'Hit the gym'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  //the UnmodifiableListView ensures that the tasks function isn't modifiable from the outside

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task delTask) {
    _tasks.remove(delTask);
    notifyListeners();
  }
}
