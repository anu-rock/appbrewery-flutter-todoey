import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'task_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [];

  @override
  void initState() {
    super.initState();

    this.tasks = [
      Task(name: 'Buy milk'),
      Task(name: 'Buy eggs'),
      Task(name: 'Buy juice'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          title: this.tasks[index].name,
          isChecked: this.tasks[index].isDone,
          onChanged: (value) {
            this.setState(() {
              this.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: this.tasks.length,
    );
  }
}
