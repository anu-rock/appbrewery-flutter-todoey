import 'package:flutter/material.dart';

class TaskCheckbox extends StatefulWidget {
  @override
  _TaskCheckboxState createState() => _TaskCheckboxState();
}

class _TaskCheckboxState extends State<TaskCheckbox> {
  bool checkboxState = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: this.checkboxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: (value) {
        this.setState(() {
          this.checkboxState = value;
        });
      },
    );
  }
}
