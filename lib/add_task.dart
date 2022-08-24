import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/controller/taskdata.dart';

class Add_task extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
  String newtask="";
    return Container(
      height: MediaQuery.of(context).size.height*0.5,
      color: Color(0xff757575),
      child: Container(
        
        decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),


    
        ),
        padding: EdgeInsets.all(20),


        child:  SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
                 Text("Add Task",textAlign: TextAlign.center,
                 style: TextStyle(color: Colors.lightBlueAccent,
                 fontSize: 30,
                 
                 
               
                 ),
                 ),
                 TextField(textAlign: TextAlign.center,autocorrect: true,autofocus: true,
                 onChanged: (newvalue){
                  newtask=newvalue;
                 },
                 ),
                 SizedBox(height: 20,),
                 FlatButton(onPressed: (){

                  Provider.of<Taskdata>(context,listen: false).onadd(newtask);
                  Navigator.pop(context);
                 }, child: Text("Add",style: TextStyle(color: Colors.white),),color: Colors.lightBlueAccent,),
        
          
        
        
        
                  
        
            ]
            
            ),
        ),
        
      ),
    );
  }
}