import 'tasks.dart';

countTasks() {
  int tasksNum = tasks.length;
  print("the total number of tasks is $tasksNum");
}

countCompletedTasks() {
  int completedTasks = 0;
  for (var taskList in tasks) {
    if (taskList["completed"] == true) {
      completedTasks += 1;
    }
  }
  print("the number of completed tasks is $completedTasks");
}

countPendingTasks() {
  int pendingTasks = 0;
  for (var taskList in tasks) {
    if (taskList["completed"] == false) {
      pendingTasks += 1;
    }
  }
  print("the number of pending tasks is $pendingTasks");
}

showStatistics() {
  countTasks();
  countCompletedTasks();
  countPendingTasks();
}
