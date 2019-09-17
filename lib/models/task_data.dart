import 'package:flutter/material.dart';
import 'dart:collection';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _taskList = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy juice'),
  ];

  UnmodifiableListView<Task> get taskList {
    return UnmodifiableListView(this._taskList);
  }

  int get taskCount {
    return this._taskList.length;
  }

  void addTask(Task task) {
    this._taskList.add(task);
    this.notifyListeners();
  }

  void toggleTaskDoneness(Task task) {
    task.toggleDone();
    this.notifyListeners();
  }
}
