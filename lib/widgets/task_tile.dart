import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function onChanged;
  final Function onLongPressed;

  TaskTile({this.title, this.isChecked, this.onChanged, this.onLongPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        this.title,
        style: TextStyle(
          decoration:
              this.isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        value: this.isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: this.onChanged,
      ),
      onLongPress: this.onLongPressed,
    );
  }
}
