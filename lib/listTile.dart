import 'package:flutter/material.dart';


class ListTitle extends StatelessWidget {
  final String title;
  final bool ischeck;
  final void Function(bool?)? toogle;
  final void Function() longpress;

ListTitle(this.title,this.ischeck,this.toogle,this.longpress);



//  void Checkboxcallback(bool? newValue){
//      if(newValue!=null){
//       setState(() {
//       ischeck=newValue;
//      });
//      }  
//   }

  @override
  Widget build(BuildContext context) {

    return ListTile(
       title:Text(title,style: TextStyle(decoration: ischeck?TextDecoration.lineThrough:TextDecoration.none)),
     trailing:  Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: ischeck,
     onChanged:toogle
    ),
      onLongPress: longpress
    );
  }
}