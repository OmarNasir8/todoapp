import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/task_data.dart';
import '../task.dart';

class AddTaskScreen extends StatelessWidget {

  String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(37),
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
            Text('Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.purpleAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              cursorColor: Colors.purpleAccent,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            SizedBox(height: 20),
            FlatButton(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Text('Add', style: TextStyle(color: Colors.white)),
              color: Colors.purpleAccent,
              onPressed: () {
               final task = Task(name: newTaskTitle);
               Provider.of<TaskData>(context).addTask(task);
               Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
