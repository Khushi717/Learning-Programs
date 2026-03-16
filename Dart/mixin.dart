mixin body{
  int hands=10;
  int mind=100;
}
mixin soul{
  int heart=100;
  int brain=100;
}
class child with body,soul{
  void feature(){
    print("hands: $hands");
    print("mind: $mind");
    print("heart: $heart");
    print("brain: $brain");
  }
}
void main(){
  child ojasv= child();
  ojasv.feature();
}