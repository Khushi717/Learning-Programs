void greet(String k){
  print("Hello $k");
}
void add(int a,int b ){
   print(a+b);
}

void main(){
  var name="ojasv";
  double v=4.12;
  print("Hello $name");
  greet("Khushi");
  add(9,2);
  dynamic animal="rabbit";
  print(animal);
  animal=10;
  print(animal);
  const a=12; //or final
  print(a);
  print(9/7);
  print(9~/7);
  print(9%7);
  String s="str";
  print(s is !int);

  //asigning a value is d is null
  var d=0;
  d??=12;
  print(d);
}
