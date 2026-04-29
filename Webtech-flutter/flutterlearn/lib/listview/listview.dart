import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  List<String> todos = ["Study", "Code", "Workout"];
  TextEditingController controller = TextEditingController();

  void addTodo() {
    setState(() {
      todos.add(controller.text);
      controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("Todo App")),
      body: Column(
        children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(labelText: "Enter task"),
          ),
          ElevatedButton(onPressed: addTodo, child: Text("Add")),
          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(todos[index]),
                );
              },
            ),
          )
        ],
      ),
    ),
    );
  }
}