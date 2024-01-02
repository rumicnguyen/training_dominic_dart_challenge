import 'dart:io';

import 'package:exercise_1/exercise_1.dart' as exercise_1;

void main(List<String> arguments) {
  String? input;
  int? number;
  do {
    stdout.write('Enter the number: ');
    input = stdin.readLineSync();
    number = int.tryParse(input!);

    if (number == null) {
      print('Value of input must be a number. Try again!');
    } else if (number <= 0) {
      print('Value of input must be more than 0. Try again!');
    } else {
      break;
    }
  } while (true);
  exercise_1.drawingSquare(number);
}
