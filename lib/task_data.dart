import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {

  final List<Task> tasks = [];

  int get taskCount {
    return tasks.length;
  }

  //remember you need to notify listners to update the screen for vars and lists
  void addTask(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }

}