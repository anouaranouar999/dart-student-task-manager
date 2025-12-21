import 'dart:io';

readInt(prompt) {
  try {
    stdout.write("enter a number :");
    String? number = stdin.readLineSync();
  } catch (e) {
    print(e);
  }
}
