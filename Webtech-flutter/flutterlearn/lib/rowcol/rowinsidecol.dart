import 'package:flutter/material.dart';


class CombinedUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Row inside Column")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          // Row (icon + text)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person),
              SizedBox(width: 10),
              Text("Anjali"),
            ],
          ),

          SizedBox(height: 20),

          // Column content
          Text("Age: 20"),
          ElevatedButton(
            onPressed: () {},
            child: Text("Follow"),
          ),

          SizedBox(height: 20),

          // Navbar row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home),
              Icon(Icons.search),
              Icon(Icons.person),
            ],
          ),
        ],
      ),
    ),
    );
  }
}