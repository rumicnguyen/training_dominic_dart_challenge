import 'dart:io';

import 'package:unit_test_1/unit_test_1.dart' as unit_test_1;

void main (List<String> arguments){
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
  stdout.write('Divisor of $number: ${unit_test_1.divisor(number)}');
}
