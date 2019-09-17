import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/task_data.dart';
import 'task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TaskData taskData = Provider.of<TaskData>(context);
    List<Task> tasks = taskData.taskList;

    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          title: tasks[index].name,
          isChecked: tasks[index].isDone,
          onChanged: (value) {
            taskData.toggleTaskDoneness(tasks[index]);
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
