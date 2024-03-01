import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/TaskData.dart';
import '../Screens/ListScreen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (context)=>TaskData(),
        child:Todolist())
  );
}

class Todolist extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MainScreen()
    );
  }
}