import 'dart:io';
import 'dart:math';

Map<int, String> random(int length) {
  Random random = Random();
  var list = <int, String>{};

  for (int i = 0; i < length; i++) {
    // /A-Z/ -> ascii /65-90/
    list[i] = String.fromCharCode(65 + random.nextInt((90 - 65) + 1));
  }
  
  return list;
}

int generateLength() {
  Random random = Random();
  return 1 + random.nextInt(5);
}

String choice(List<String> list) {
  stdout.write('Please guess a letter:');
  String? input;
  do {
    input = stdin.readLineSync();
    if (input! == 'exit') {
      return 'exit';
    } else if (list.contains(input.toUpperCase()) == true ||
        list.contains(input.toLowerCase()) == true) {
      print('Letter aleady exsist. Try again!');
    } else if (input.length == 1 && checkLetter(input)) {
      return input.toUpperCase();
    }
    print('Unsuitable option. Try again!');
  } while (true);
}

void printResult(List<String> list) {
  for (int i = 0; i < list.length; i++) {
    stdout.write('${list[i]} ');
  }
  print('\n');
}

bool checkLetter(String letter) {
  if (letter.runes.first >= 65 && letter.runes.first <= 90) {
    return true;
  }
  if (letter.runes.first >= 97 && letter.runes.first <= 122) {
    return true;
  }
  return false;
}
