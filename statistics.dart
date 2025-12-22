import 'students.dart';
import 'tasks.dart';

totalStudents() {
  print("Total students: ${students.length}");
}

totalTasks() {
  print("Total tasks: ${tasks.length}");
}

completedTasks() {
  int count = 0;

  for (var task in tasks) {
    if (task["completed"] == true) {
      count++;
    }
  }

  print("Completed tasks: $count");
}

completionRate() {
  if (tasks.isEmpty) {
    print("Completion rate: 0%");
    return;
  }

  int completed = 0;

  for (var task in tasks) {
    if (task["completed"] == true) {
      completed++;
    }
  }

  double rate = (completed / tasks.length) * 100;
  print("Completion rate: ${rate.toStringAsFixed(2)}%");
}

mostActiveStudent() {
  if (tasks.isEmpty) {
    print("No tasks available.");
    return;
  }

  Map<int, int> activity = {};

  for (var task in tasks) {
    int studentId = task["studentId"];
    activity[studentId] = (activity[studentId] ?? 0) + 1;
  }

  int mostActiveId = activity.keys.first;
  int maxTasks = activity[mostActiveId]!;

  activity.forEach((id, count) {
    if (count > maxTasks) {
      mostActiveId = id;
      maxTasks = count;
    }
  });

  print("Most active student ID: $mostActiveId with $maxTasks tasks");
}
