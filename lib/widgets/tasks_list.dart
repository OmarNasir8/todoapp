import 'package:flutter/material.dart';
import 'package:todoapp/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/task_data.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
          return TaskTile(taskTitle: Provider.of<TaskData>(context).tasks[index].name, isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
          checkboxCallback: (bool checkboxState) {
            Provider.of<TaskData>(context).updateTask(Provider.of<TaskData>(context).tasks[index]);
          },
          onLongPress: () {
            Provider.of<TaskData>(context).deleteTask(Provider.of<TaskData>(context).tasks[index]);
          },
          );
    },
    itemCount: Provider.of<TaskData>(context).taskCount
    );
  }
}