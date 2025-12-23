import 'tasks.dart';

int id = 0;
List<Map<String, dynamic>> students = [];

List get studentsNames => students.map((student) => student['Name']).toList();
List get studentsIds => students.map((student) => student["Id"]).toList();

capitalize(String string) {
  string = string.trim().toLowerCase();
  string = string[0].toUpperCase() + string.substring(1);
  return string;
}

void addStudent(String name) {
  name = capitalize(name);
  if (studentsNames.contains(name)) {
    print("=============");
    print("$name is already in the system.");
    print("=============");
  } else {
    Map<String, dynamic> student = {"Id": id, "Name": name};
    students.add(student);
    print("=============");
    print("$name is added to the system.");
    print("=============");
    id++;
  }
}

void removeStudent(int studentId) {
  if (!studentsIds.contains(studentId)) {
    print("=============");
    print("Id not found.");
    print("=============");
  } else {
    students.removeAt(studentId);
    for (int i = studentId; i < students.length; i++) {
      students[i]["Id"]--;
      studentsNames.removeAt(studentId);
      studentsIds.removeLast();
    }
    id--;
    print("=============");
    print("Student removed.");
    print("=============");
  }
}

void showStudents() {
  print("=============");
  print("ID  Name");
  print("=============");

  students.forEach((element) {
    print("${element["Id"]}   ${element["Name"]}");
  });
  print("=============");
}

bool studentExist(String name) {
  name = capitalize(name);
  if (studentsNames.contains(name)) {
    print("=============");
    print("$name was found.");
    print("=============");
    return true;
  } else {
    print("=============");
    print("$name was not found.");
    print("=============");
    return false;
  }
}

void getStudentByld(String studentName) {
  if (!studentExist(studentName)) {
    print("$studentName was not found.");
  } else {
    print("Id:${studentsNames.indexOf(studentName)}");
    print("Name: $studentName");
    tasks.forEach((element) {
      if (element["studentId"] == studentsNames.indexOf(studentName)) {
        print("Taks: ${element["title"]}");
      }
    });
  }
}
