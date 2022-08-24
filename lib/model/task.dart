class Task{
final String name;
 bool ischeck;
Task({required this.name,this.ischeck=false});



void toogle(){
 ischeck=!ischeck;
}
}