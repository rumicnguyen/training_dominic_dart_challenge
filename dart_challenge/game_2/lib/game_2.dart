import 'dart:io';
import 'dart:math';

int randomNumber() {
  Random random = Random();
  return random.nextInt(101);
}

int choice(int min, int max) {
  stdout.write('Please choose a number between $min and $max:');
  String? input;
  do {
    input = stdin.readLineSync();
    if(input! == 'exit'){
      return -1;
    }
    if (int.tryParse(input)! >= min && int.tryParse(input)! <= max) {
      return int.tryParse(input)!;
    }
    print('Unsuitable option. Try again!');
  } while (true);
  
}
