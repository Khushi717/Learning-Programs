Future<String> getdata() async{
  return "Oju";
}

Future<String> getname(){
  return Future.delayed(Duration(seconds:15),(){
    return "Ojuu";
  });
}
// void main() async{
//   String name= await getdata();
//   print (name);
//   print(await getname());
// }


Future<String> returndata(){
  return Future.delayed(Duration(seconds: 2),(){
    return "Khushu";
  });
}

void main() async{
  String name=await returndata();
  print(name);
}