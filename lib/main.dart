import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/screens/tasks_screen.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/models/task.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      builder: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
