import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
    final String name;
    final int age;
    const MyApp({required this.name, required this.age});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: Text("My first flutter app"),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text("Hello"),
            Text("Flutter"),
            Text("World"),
            Text("Name: $name"),
            Text("Age: $age"),
          ],  
        ),
      ),
      ),
    );
  }
}