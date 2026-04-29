import 'package:flutter/material.dart';
class ColorChanger extends StatefulWidget {
  @override
  _ColorChangerState createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
  Color boxColor = Colors.blue;

  void changeColor() {
    setState(() {
      boxColor = boxColor == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Color Change")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: boxColor,
            ),
            ElevatedButton(
              onPressed: changeColor,
              child: Text("Change Color"),
            ),
          ],
        ),
      ),
    ),
    );
  }
}