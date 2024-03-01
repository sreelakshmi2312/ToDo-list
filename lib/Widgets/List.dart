import 'package:flutter/material.dart';
import 'ListTile.dart';
import 'package:provider/provider.dart';
import '../models/TaskData.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder:(context,taskData,child){
    return ListView.builder(
      itemCount: taskData.tasks.length,
      itemBuilder: (context,index) {
        final task = taskData.tasks[index];
        return Listitems(
            name: task.title,
            isChecked: task.checkBoxstate,
            toggleCheckbox: (checkboxState) {
              taskData.updateTask(task);
            }
        );
      }
    );
      }
    );
  }
}


