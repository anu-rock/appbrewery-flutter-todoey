import 'package:flutter/material.dart';

class TaskCheckbox extends StatefulWidget {
  @override
  _TaskCheckboxState createState() => _TaskCheckboxState();
}

class _TaskCheckboxState extends State<TaskCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: false,
      activeColor: Colors.lightBlueAccent,
      onChanged: (value) {},
    );
  }
}
