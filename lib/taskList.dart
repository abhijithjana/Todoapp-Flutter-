import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/listTile.dart';
import 'package:todoey/model/task.dart';

import 'controller/taskdata.dart';

class TaskList extends StatelessWidget {


@override
  Widget build(BuildContext context) {



    return ListView.builder(

      itemBuilder: (context,index){
         
         return ListTitle(

             Provider.of<Taskdata>(context).task[index].name,Provider.of<Taskdata>(context).task[index].ischeck,(newValue){
     if(newValue!=null){
           Provider.of<Taskdata>(context,listen: false).onchechk(index);

      
     }

  },
             (){
               Provider.of<Taskdata>(context,listen: false).delete(index);
             }

  );
      },
      itemCount: Provider.of<Taskdata>(context).tasklength,
      );
  }
}