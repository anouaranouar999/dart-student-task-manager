import 'helpers.dart';

List<Map<String, dynamic>> tasks = [];

addTask() {
  String taskTitle = readString("enter the title of task :");
  String taskDescription = readString("enter the description of the task :");
  int id = tasks.length + 1;
  Map<String, dynamic> task = {
    "id": id,
    "title": taskTitle,
    "description": taskDescription,
    "completed": false,
  };
  tasks.add(task);
  print("task added successfully");
}

listTasks() {
  for (var taskList in tasks) {
    print("=====task=====");
    for (var entry in taskList.entries) {
      print("${entry.key} : ${entry.value}");
    }
  }
}

removeTask() {
  bool found = false;
  for (var taskList in tasks) {
    print("=====task=====");
    for (var entry in taskList.entries) {
      print("${entry.key} : ${entry.value}");
    }
  }

  int searchedId = readInt("enter the id of the task do you want to delete");
  for (var taskList in tasks) {
    if (taskList["id"] == searchedId) {
      tasks.remove(taskList);
      print("task deleted successfully");
      found = true;
      break;
    }
  }
  if (found == false) {
    print("task not found");
  }
}

updateTask() {
  bool found = false;
  for (var task in tasks) {
    print("=====task=====");
    for (var entry in task.entries) {
      print("${entry.key} : ${entry.value}");
    }
  }

  int searchedId = readInt("enter the id of the task you want to update :");

  for (var task in tasks) {
    if (task["id"] == searchedId) {
      found = true;

      String newTitle = readString(
        "enter new title (leave empty to keep old): ",
      );
      if (newTitle.isNotEmpty) {
        task["title"] = newTitle;
      }

      String newDescription = readString(
        "enter new description (leave empty to keep old): ",
      );
      if (newDescription.isNotEmpty) {
        task["description"] = newDescription;
      }

      int completedChoice = readInt(
        "is the task completed? (1 = yes, 0 = no): ",
      );
      task["completed"] = completedChoice == 1;

      print("task updated successfully");
      break;
    }
  }

  if (!found) {
    print("task not found");
  }
}
