import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/TaskData.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String?Title;
    return Container(
       color:Color(0xff757575),
       child:Container(
           padding:EdgeInsets.all(16),
       decoration: BoxDecoration(
       borderRadius: BorderRadius.only(
         topLeft: Radius.circular(20),
         topRight: Radius.circular(20),
       ),
         color:Colors.white,
       ),
         child:Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           children: <Widget>[
             Text('Add Task',
             textAlign: TextAlign.center,
             style:TextStyle(
               color:Colors.blue,
               fontSize: 30,
             ),
             ),
             TextField(
               autofocus: true,
               textAlign: TextAlign.center,
               onChanged:(newTitle){
                  Title=newTitle;
               },
             ),
             SizedBox(height:10),
             ElevatedButton(
                 onPressed: (){
                    Provider.of<TaskData>(context,listen:false).addTask(Title!);
                    Navigator.pop(context);
                   },
                 style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                 child: Text('Add')),
           ],
         )
       ),
    );
  }
}
