import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              title: taskData.taskList[index].name,
              isChecked: taskData.taskList[index].isDone,
              onChanged: (value) {
                taskData.toggleTaskDoneness(taskData.taskList[index]);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
