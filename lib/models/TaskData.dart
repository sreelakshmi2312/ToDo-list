import 'package:flutter/material.dart';
import 'Tasks.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier{
  List<Tasks> _tasks=[
    Tasks(title:'buy clothes'),
    Tasks(title:'buy shoes'),
  ];

  UnmodifiableListView<Tasks> get tasks{
    return UnmodifiableListView(_tasks);
  }

  void addTask(String TaskTitle){
  final task=Tasks(title:TaskTitle);
  _tasks.add(task);
  notifyListeners();
}
int get listCount{
  return _tasks.length;
}

void updateTask(Tasks task){
   task.ToggleDone();
   notifyListeners();
}
void deleteTask(Tasks task){
    _tasks.remove(task);
    notifyListeners();
}
}