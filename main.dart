import 'students.dart';
import 'dart:io';

void main() {
  String option = "";
  while (option != "q") {
    handleUserChoice(showMainMenu());
  }
}

showMainMenu() {
  print("===== Welcome =====");
  print("""
  1-For students options.
  2-For tasks options.
  3-For statistics options.
  """);

  stdout.write("Please select an option(1-3): ");
  int option = int.parse(stdin.readLineSync() ?? "0");
  int option2 = 0;

  switch (option) {
    case 1:
      print("===== Students =====");
      print("""
      1-To add student.
      2-To remove student.
      3-To show students.
      4-To check student exists.
      5-To get students infos.
      """);

    case 2:
      print("===== Tasks =====");
      print("""
      1-To add task.
      2-To mark task as completed.
      3-To remove task.
      4-To show task by student.
      5-To check task exists.
      """);

    case 3:
      print("===== Statistics =====");
      print("""
      1-To show total students.
      2-To show total tasks.
      3-To check completed tasks count.
      4-To check completion rate.
      5-To show most active student.
      """);
  }
  stdout.write("Please select an option(1-5): ");
  option2 = int.parse(stdin.readLineSync() ?? "0");
  return [option, option2];
}

void handleUserChoice(List options) {
  switch (options[0]) {
    case 1:
      switch (options[1]) {
        case 1:
          stdout.write("Please enter student's name: ");
          String name = stdin.readLineSync()!;
          addStudent(name);

        case 2:
          stdout.write("Please enter student's ID: ");
          int studentId = int.parse(stdin.readLineSync() ?? "0");
          removeStudent(studentId);

        case 3:
          showStudents();

        case 4:
          stdout.write("Please enter student's name: ");
          String name = stdin.readLineSync()!;
          studentExist(name);

        case 5:
          print("ss");
      }
  }
}
