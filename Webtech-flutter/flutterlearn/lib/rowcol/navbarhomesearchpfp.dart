import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: NavbarExample()));
}

class NavbarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navbar")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            color: Colors.blue,
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home, color: Colors.white),
                Icon(Icons.search, color: Colors.white),
                Icon(Icons.person, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}