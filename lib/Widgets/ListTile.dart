import 'package:flutter/material.dart';


class Listitems extends StatelessWidget {
  final String name;
  final bool isChecked;
  final Function toggleCheckbox;
  Listitems({required this.name, required this.isChecked , required this.toggleCheckbox});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:Text(name,
      style:TextStyle(
        decoration:
          isChecked?TextDecoration.lineThrough:null,
      )
      ),
      trailing:Checkbox(
        value: isChecked,
        onChanged: (newValue){
          toggleCheckbox(newValue);
        },
      ),

    );

  }
}

