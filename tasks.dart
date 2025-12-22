import 'helpers.dart';

List<Map<String, dynamic>> tasks = [];

addTask(int studentId) {
  String title = readString("Enter task title: ");
  String description = readString("Enter task description: ");

  int id = tasks.length + 1;

  Map<String, dynamic> task = {
    "id": id,
    "studentId": studentId,
    "title": title,
    "description": description,
    "completed": false,
  };

  tasks.add(task);
  print("Task added successfully.");
}

removeTask() {
  int id = readInt("Enter task id to remove: ");
  bool found = false;

  for (var task in tasks) {
    if (task["id"] == id) {
      tasks.remove(task);
      found = true;
      print("Task removed successfully.");
      break;
    }
  }

  if (!found) {
    print("Task not found.");
  }
}

markTaskAsCompleted() {
  int id = readInt("Enter task id to mark as completed: ");
  bool found = false;

  for (var task in tasks) {
    if (task["id"] == id) {
      task["completed"] = true;
      found = true;
      print("Task marked as completed.");
      break;
    }
  }

  if (!found) {
    print("Task not found.");
  }
}

showTasksByStudent(int studentId) {
  bool hasTasks = false;

  for (var task in tasks) {
    if (task["studentId"] == studentId) {
      print("----- Task -----");
      print("ID: ${task['id']}");
      print("Title: ${task['title']}");
      print("Description: ${task['description']}");
      print("Completed: ${task['completed']}");
      hasTasks = true;
    }
  }

  if (!hasTasks) {
    print("No tasks found for this student.");
  }
}

taskExists(int taskId) {
  for (var task in tasks) {
    if (task["id"] == taskId) {
      return true;
    }
  }
  return false;
}
