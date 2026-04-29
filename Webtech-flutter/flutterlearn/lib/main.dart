import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Task {
  String title;
  String description;
  DateTime dueDate;
  bool isCompleted;

  Task({
    required this.title,
    required this.description,
    required this.dueDate,
    this.isCompleted = false,
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Organizer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Roboto',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/addTask': (context) => AddTaskScreen(),
      },
    );
  }
}

// ================= HOME SCREEN =================

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List<Task> tasks = [];
  List<String> notes = [];

  List<Map<String, String>> schedule = [
    {"subject": "Math", "time": "9:00 AM"},
    {"subject": "Science", "time": "10:00 AM"},
    {"subject": "English", "time": "11:00 AM"},
    {"subject": "Computer", "time": "12:00 PM"},
  ];

  void addTask(Task task) {
    setState(() {
      tasks.add(task);
    });
  }

  void addNote(String note) {
    setState(() {
      notes.add(note);
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      TasksScreen(tasks: tasks, addTask: addTask),
      ScheduleScreen(schedule: schedule),
      NotesScreen(notes: notes, addNote: addNote),
    ];

    int completedTasks =
        tasks.where((task) => task.isCompleted).length;

    return Scaffold(
      appBar: AppBar(
        title: Text("Student Organizer"),
      ),
      body: Column(
        children: [
          // Dashboard Cards
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                summaryCard("Total", tasks.length),
                summaryCard("Done", completedTasks),
                summaryCard("Today", schedule.length),
              ],
            ),
          ),

          Expanded(child: screens[_currentIndex]),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.check), label: "Tasks"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: "Schedule"),
          BottomNavigationBarItem(icon: Icon(Icons.note), label: "Notes"),
        ],
      ),
    );
  }

  Widget summaryCard(String title, int value) {
    return Card(
      elevation: 4,
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(value.toString(), style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

// ================= TASKS SCREEN =================

class TasksScreen extends StatefulWidget {
  final List<Task> tasks;
  final Function(Task) addTask;

  TasksScreen({required this.tasks, required this.addTask});

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  void toggleTask(int index) {
    setState(() {
      widget.tasks[index].isCompleted =
          !widget.tasks[index].isCompleted;
    });
  }

  Future<void> goToAddTask() async {
    final result =
        await Navigator.pushNamed(context, '/addTask') as Task?;

    if (result != null) {
      widget.addTask(result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.tasks.isEmpty
          ? Center(child: Text("No tasks yet"))
          : ListView.builder(
              itemCount: widget.tasks.length,
              itemBuilder: (context, index) {
                final task = widget.tasks[index];
                return Card(
                  margin: EdgeInsets.all(8),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.book),
                    ),
                    title: Text(task.title),
                    subtitle: Text(
                        "${task.description}\nDue: ${task.dueDate.toLocal().toString().split(' ')[0]}"),
                    isThreeLine: true,
                    trailing: Icon(
                      task.isCompleted
                          ? Icons.check_circle
                          : Icons.circle_outlined,
                      color: task.isCompleted
                          ? Colors.green
                          : Colors.grey,
                    ),
                    onTap: () => toggleTask(index),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: goToAddTask,
        child: Icon(Icons.add),
      ),
    );
  }
}

// ================= ADD TASK =================

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final _formKey = GlobalKey<FormState>();

  String title = "";
  String description = "";
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Task")),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: "Title"),
                validator: (value) => value!.isEmpty ? "Title is required" : null,
                onSaved: (value) => title = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Description"),
                validator: (value) => value!.isEmpty ? "Description is required" : null,
                onSaved: (value) => description = value!,
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () async {
                  selectedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2020),
                    lastDate: DateTime(2100),
                  );
                  setState(() {});
                },
                child: Text(selectedDate == null
                    ? "Pick Date"
                    : selectedDate!
                        .toLocal()
                        .toString()
                        .split(' ')[0]),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (!_formKey.currentState!.validate()) return;
                  if (selectedDate == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Please select a date")),
                    );
                    return;
                  }

                  _formKey.currentState!.save();

                  final newTask = Task(
                    title: title,
                    description: description,
                    dueDate: selectedDate!,
                  );

                  Navigator.pop(context, newTask);
                },
                child: Text("Save Task"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ================= SCHEDULE =================

class ScheduleScreen extends StatelessWidget {
  final List<Map<String, String>> schedule;

  ScheduleScreen({required this.schedule});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: schedule.length,
      itemBuilder: (context, index) {
        final item = schedule[index];

        return GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: Text(item['subject']!),
                content: Text("Time: ${item['time']}"),
              ),
            );
          },
          child: Card(
            elevation: 4,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.book),
                  SizedBox(height: 5),
                  Text(item['subject']!),
                  Text(item['time']!),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

// ================= NOTES =================

class NotesScreen extends StatefulWidget {
  final List<String> notes;
  final Function(String) addNote;

  NotesScreen({required this.notes, required this.addNote});

  @override
  _NotesScreenState createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  final TextEditingController controller = TextEditingController();

  void submitNote() {
    if (controller.text.isEmpty) return;

    widget.addNote(controller.text);
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              labelText: "Enter note",
              suffixIcon: IconButton(
                icon: Icon(Icons.add),
                onPressed: submitNote,
              ),
            ),
          ),
        ),
        Expanded(
          child: widget.notes.isEmpty
              ? Center(child: Text("No notes yet"))
              : ListView.builder(
                  itemCount: widget.notes.length,
                  itemBuilder: (_, index) => Card(
                    child: ListTile(
                      leading: Icon(Icons.note),
                      title: Text(widget.notes[index]),
                    ),
                  ),
                ),
        )
      ],
    );
  }
}
