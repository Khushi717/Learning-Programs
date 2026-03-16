class parent{
  var eye="Brown";
  var teeth="white";
  String? mind;
  void run(){
    print("running");
  }
}

class child extends parent{
  child(){
    mind="Brilliant";
  }
  void feature(){
    print("My eye color is ${super.eye}");
    print("My mind is ${mind}");
  }
}
void main(){
  child khushi=child();
  khushi.feature();
  khushi.run();
}