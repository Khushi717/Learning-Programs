class A{
  int? a;
  int ? b;
  void set(int x,int y){
    this.a=x;
    this.b=y;
  }
  void prnt(){
    print(a!+b!); // why ! --> checks if NULL
  }
}
void main(){
  A obj1= A();
  A obj2= A();
 obj1.set(0,3);
  obj1.prnt();
  obj2..set(0,3)..prnt();


  List lst=[1,2,3,4,5,6];
  lst.forEach((value){
    print(value);
  });

  for(int i=0;i<lst.length;i++){
    print(lst[i]);
  }
}
