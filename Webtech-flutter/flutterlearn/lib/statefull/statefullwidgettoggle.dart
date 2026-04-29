import 'package:flutter/material.dart';

class ToggleText extends StatefulWidget {
  @override
  _ToggleTextState createState() => _ToggleTextState();
}

class _ToggleTextState extends State<ToggleText> {
  bool showText = true;

  void toggle() {
    setState(() {
      showText = !showText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Toggle Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (showText) Text("Hello Flutter 👋"),
            ElevatedButton(
              onPressed: toggle,
              child: Text("Toggle"),
            ),
          ],
        ),
      ),
    ),
    );
  }
}