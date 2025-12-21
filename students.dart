int id = 0;
List<Map> students = [];

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
    Map student = {"Id": id, "Name": name};
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
    print("=============");
    print("${element["Id"]}   ${element["Name"]}");
    print("=============");
  });
}

void studentExist(String name) {
  if (studentsNames.contains(name)) {
    print("=============");
    print("$name was found.");
    print("=============");
  } else {
    print("=============");
    print("$name was not found.");
    print("=============");
  }
}
