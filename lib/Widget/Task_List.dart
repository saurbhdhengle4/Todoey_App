// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:todoey/Model/task_data.dart';
import 'package:todoey/Widget/Task_Tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);
//check notes folder
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      /// why use because code is short not write Provider.of<DataTask>(contex).
      /// simple use a new obj that is taskData
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.taskCount,
            itemBuilder: (context, index) {
              final task = taskData.tasks[index];
              return TaskTile(
                isChecked: task.isDone,
                taskTitle: task.name.toString(),
                checkboxCallback: (valuenew) {
                  taskData.updateTask(task);
                },
                longPressCallback: () {
                  taskData.deleteTaskData(task);
                },
              );
            });
      },
    );
  }
}
