import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ThreeIconsRow()));
}

class ThreeIconsRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("3 Icons Row")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.home, size: 30),
            Icon(Icons.search, size: 30),
            Icon(Icons.person, size: 30),
          ],
        ),
      ),
    );
  }
}