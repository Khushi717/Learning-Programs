import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ColumnExample()));
}

class ColumnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Column Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name: Anjali", style: TextStyle(fontSize: 18)),
            Text("Age: 20", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text("Click Me"),
            ),
          ],
        ),
      ),
    );
  }
}