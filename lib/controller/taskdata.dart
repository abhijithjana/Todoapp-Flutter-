import 'package:flutter/foundation.dart';

import '../model/task.dart';

class Taskdata extends ChangeNotifier{
  List<Task> task=[
    Task(name: 'buy pen'),


  ];

  int get tasklength{
    return task.length;
  }
void onchechk(int index) {
   task[index].toogle();

   notifyListeners();
   // delete(index);

}
void delete(index){
    task.removeAt(index);
    print("click");
    notifyListeners();
}



  void onadd(String taskname){
     final t=Task(name: taskname);
    task.add(t);
    notifyListeners();


}
}