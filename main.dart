import 'students.dart';
import 'helpers.dart';
import 'statistics.dart';
import 'tasks.dart';

int option = 0;
void main() {
  do {
    List choice = showMainMenu();
    if (choice[0] == 0)
      break;
    else
      handleUserChoice(choice);
  } while (option != 0);
}

List showMainMenu() {
  print("===== Welcome =====");
  print("""
  1-For students options.
  2-For tasks options.
  3-For statistics options.
  0-To quit""");
  int option2 = 0;
  do {
    option = readInt("Please select an option(1-3): ");
  } while (option > 3);

  switch (option) {
    case 0:
      return [0, 0];
    case 1:
      print("===== Students =====");
      print("""
      1-To add student.
      2-To remove student.
      3-To show students.
      4-To check student exists.
      5-To get students infos.
      0-To go back""");

    case 2:
      print("===== Tasks =====");
      print("""
      1-To add task.
      2-To mark task as completed.
      3-To remove task.
      4-To show task by student.
      5-To check task exists.
      0-To go back      """);

    case 3:
      print("===== Statistics =====");
      print("""
      1-To show total students.
      2-To show total tasks.
      3-To check completed tasks count.
      4-To check completion rate.
      5-To show most active student.
      0-To go back      """);
  }
  // stdout.write("Please select an option(1-5): ");
  option2 = readInt("Please select an option(1-5): ");
  return [option, option2];
}

void handleUserChoice(List options) {
  switch (options[0]) {
    case 0:
    case 1:
      switch (options[1]) {
        case 1:
          String name = readString("Please enter student's name: ");
          addStudent(name);

        case 2:
          int studentId = readInt("Please enter student's ID: ");
          removeStudent(studentId);

        case 3:
          showStudents();

        case 4:
          String name = readString("Please enter student's name: ");
          studentExist(name);

        case 5:
          print("ss");
      }

    case 2:
      switch (options[1]) {
        case 1:
          int studentId = readInt("Please enter student's ID: ");
          addTask(studentId);

        case 2:
          markTaskAsCompleted();

        case 3:
          removeTask();

        case 4:
          int studentId = readInt("Please enter student's ID: ");
          showTasksByStudent(studentId);

        case 5:
          int taskId = readInt("Please enter student's ID: ");
          taskExists(taskId);
      }

    case 3:
      switch (options[1]) {
        case 1:
          totalStudents();

        case 2:
          totalTasks();

        case 3:
          completedTasks();

        case 4:
          completionRate();

        case 5:
          mostActiveStudent();
      }
  }
}
