import 'package:flutter/material.dart';

class IconTextRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Icon + Text")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 30),
            SizedBox(width: 10),
            Text("Anjali", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    ),
    );
  }
}