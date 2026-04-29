class Person {
  final String _name;
  Person(this._name);
  String get name => _name;
  void displayInfo() {
    print("Name: $_name");
  }
}

class Student extends Person {
  final int _rollNo;
  final String _course;
  Student(String name, this._rollNo, this._course) : super(name);
  int get rollNo => _rollNo;
  String get course => _course;
  @override
  void displayInfo() {
    print("Student Name: $name");
    print("Roll No: $_rollNo");
    print("Course: $_course");
  }
}


class Professor extends Person {
  final String _subject;
  Professor(String name, this._subject) : super(name);
  String get subject => _subject;
  @override
  void displayInfo() {
    print("Professor Name: $name");
    print("Subject: $_subject");
  }
}

class Course {
  final String _courseName;
  final int _credits;
  Course(this._courseName, this._credits);
  String get courseName => _courseName;
  int get credits => _credits;
  void displayCourse() {
    print("Course: $_courseName");
    print("Credits: $_credits");
  }
}


Future<String> fetchStudentData(String name) async {
  await Future.delayed(const Duration(seconds: 2));
  return "$name data fetched from server";
}

void main() async {
  print("UNIVERSITY SYSTEM\n");

  Student s1 = Student("Anjali", 101, "Computer Science");
  Student s2 = Student("Rahul", 102, "Mechanical");

  Professor p1 = Professor("Dr. Sharma", "Artificial Intelligence");
  Professor p2 = Professor("Dr. Mehta", "Thermodynamics");

  Course c1 = Course("Data Structures", 4);
  Course c2 = Course("Operating Systems", 3);

  print("Students");
  s1.displayInfo();
  print("");
  s2.displayInfo();

  print("\nProfessors");
  p1.displayInfo();
  print("");
  p2.displayInfo();

  print("\nCourses");
  c1.displayCourse();
  print("");
  c2.displayCourse();

  print("\nFetching data from server...");
  String result = await fetchStudentData(s1.name);
  print(result);
  print("\nEND");
}