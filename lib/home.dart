import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:todoey/add_task.dart';
import 'package:todoey/controller/taskdata.dart';
import 'package:todoey/model/task.dart';
import 'package:todoey/taskList.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SafeArea(

          child:Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [Container(
              padding: EdgeInsets.only(top: 40,left: 50),
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                CircleAvatar(child: Icon(Icons.list,size: 30,),
                backgroundColor: Colors.white,
                radius: 30,
                ),
                SizedBox(height: 30,),
                Text("Todoey",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 50,color: Colors.white),),
                Text(Provider.of<Taskdata>(context).tasklength.toString(), style: TextStyle(fontSize: 18),
                ),
                 SizedBox(height: 25,)

              ],),
            ),
            Expanded(child:Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
              ),
              child: TaskList(),
              )),

            ]
          )
        ),
          floatingActionButton: FloatingActionButton(onPressed: () {

            showModalBottomSheet(context: context, builder: (context)=> Add_task());

          },child: Icon(Icons.add),),

        backgroundColor: Colors.lightBlueAccent),

    );
  }
}



