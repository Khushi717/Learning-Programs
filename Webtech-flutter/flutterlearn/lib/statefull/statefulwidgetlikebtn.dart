import 'package:flutter/material.dart';
class LikeButton extends StatefulWidget {
  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool liked = false;

  void toggleLike() {
    setState(() {
      liked = !liked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Like Button")),
      body: Center(
        child: IconButton(
          icon: Icon(
            Icons.favorite,
            color: liked ? Colors.red : Colors.grey,
            size: 40,
          ),
          onPressed: toggleLike,
        ),
      ),
    ),
    );
  }
}