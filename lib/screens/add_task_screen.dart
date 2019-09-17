import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String taskName;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(40.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.lightBlueAccent,
                    width: 4.0,
                  ),
                ),
              ),
              onChanged: (value) {
                taskName = value;
              },
            ),
            SizedBox(height: 20.0),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(fontSize: 15.0),
              ),
              padding: EdgeInsets.symmetric(vertical: 15.0),
              color: Colors.lightBlueAccent,
              textColor: Colors.white,
              onPressed: () {
                TaskData taskData = Provider.of<TaskData>(context);
                taskData.addTask(Task(name: taskName));
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
