import 'dart:io';
import 'dart:math';

Map<int, int> intToMap(int number) {
  var map = <int, int>{};
  int temp = number;
  for (int i = 4; i > 0; i--) {
    map[i] = temp % 10;
    temp ~/= 10;
  }
  return map;
}

Map<int, int> random() {
  Random random = Random();
  int number = 1000 + random.nextInt((9999 + 1) - 1000);
  return intToMap(number);
}

int choice() {
  String? input;
  do {
    stdout.write('Please choose a four digit number:');
    input = stdin.readLineSync();
    if (input! == 'exit') return -1;

    if (int.tryParse(input)! > 999 && int.tryParse(input)! < 10000) {
      return int.tryParse(input)!;
    }
    print('Incorrect number. Make sure to give 4 digit number.');
  } while (true);
}
