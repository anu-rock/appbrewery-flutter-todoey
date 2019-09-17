import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  TaskList({this.tasks});

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          title: this.widget.tasks[index].name,
          isChecked: this.widget.tasks[index].isDone,
          onChanged: (value) {
            this.setState(() {
              this.widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: this.widget.tasks.length,
    );
  }
}
