import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/controller/taskdata.dart';
import 'package:todoey/home.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=>Taskdata(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
    
  }
}