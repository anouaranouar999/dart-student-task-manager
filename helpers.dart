import 'dart:io';

readInt(prompt) {
  while (true) {
    stdout.write(prompt);
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

// temporary comment to trigger git
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

void pausePrintHidden(prompt) {
  stdout.writeln(prompt);
  stdin.readLineSync();
}
