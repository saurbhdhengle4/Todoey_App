import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Model/task_data.dart';
import 'package:todoey/Screens/Task_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: const MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
