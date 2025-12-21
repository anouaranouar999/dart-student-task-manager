import 'dart:io';

readInt(prompt) {
  while (true) {
    print(prompt);
    stdout.write("enter a number :");
    String? number = stdin.readLineSync();
    var numb = num.tryParse(number!);
    if (numb == null) {
      print("Invalid input");
      continue;
    } else {
      return numb;
    }
  }
}

readString(prompt) {
  while (true) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    if (input == null) {
      continue;
    } else if (input.isEmpty) {
      continue;
    } else {
      return input;
    }
  }
}
