import 'package:flutter/material.dart';

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function onChanged;

  TaskCheckbox({this.checkboxState, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: this.checkboxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: this.onChanged,
    );
  }
}
