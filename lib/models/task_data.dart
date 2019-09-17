import 'package:flutter/material.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> taskList;

  TaskData({this.taskList});

  void addTask(Task task) {
    this.taskList.add(task);
    this.notifyListeners();
  }

  void toggleTaskDoneness(Task task) {
    task.toggleDone();
    this.notifyListeners();
  }
}
