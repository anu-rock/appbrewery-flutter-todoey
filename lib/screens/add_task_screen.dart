import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
