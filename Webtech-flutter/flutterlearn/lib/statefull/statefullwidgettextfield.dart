import 'package:flutter/material.dart';
class InputExample extends StatefulWidget {
  @override
  _InputExampleState createState() => _InputExampleState();
}

class _InputExampleState extends State<InputExample> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Input Example")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
              decoration: InputDecoration(labelText: "Enter name"),
            ),
            SizedBox(height: 20),
            Text("Hello $name"),
          ],
        ),
      ),
    ),
    );
  }
}