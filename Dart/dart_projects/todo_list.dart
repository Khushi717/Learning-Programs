import 'dart:io';

List<String> tasks = [];

void addTask() {
  stdout.write("Enter task: ");
  String? task = stdin.readLineSync();

  if (task != null && task.trim().isNotEmpty) {
    tasks.add(task);
    print("Task added!");
  } else {
    print("Invalid task");
  }
}

void viewTasks() {
  if (tasks.isEmpty) {
    print("No tasks available");
    return;
  }

  print("\n Your Tasks:");
  for (int i = 0; i < tasks.length; i++) {
    print("${i + 1}. ${tasks[i]}");
  }
}

void removeTask() {
  viewTasks();

  if (tasks.isEmpty) return;

  stdout.write("Enter task number to remove: ");
  int? index = int.tryParse(stdin.readLineSync()!);

  if (index != null && index > 0 && index <= tasks.length) {
    tasks.removeAt(index - 1);
    print("Task removed!");
  } else {
    print("Invalid number");
  }
}

void main() {
  while (true) {
    print("\n====== TODO LIST ======");
    print("1. Add Task");
    print("2. View Tasks");
    print("3. Remove Task");
    print("4. Exit");

    stdout.write("Choose option: ");
    int? choice = int.tryParse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        addTask();
        break;

      case 2:
        viewTasks();
        break;

      case 3:
        removeTask();
        break;

      case 4:
        print("Goodbye!");
        return;

      default:
        print("Invalid choice");
    }
  }
}