import 'package:flutter/foundation.dart';
import 'package:todoey/Model/Task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  // ignore: prefer_final_fields
  List<Task> _tasks = [
    Task(name: 'Bay milk'),
    Task(name: 'Bay eggs'),
    Task(name: 'Bay bread'),
  ];
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }
  //
  // List<Task> get tasks {
  //   return _tasks;
  // }
  // ///it is a gratter use for acess to private obj to other screen

  int get taskCount {
    ///it is gatter simplify the pross to get task.length
    ///use for short code
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
    //use for checaking task
    //create a new method and pass Task List to task
  }

  void deleteTaskData(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
