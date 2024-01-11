import 'dart:io';
import 'dart:math';

String randomChoice() {
  Random random = Random();
  var choices = <String>['rock', 'paper', 'scissors'];
  return choices[random.nextInt(choices.length)];
}

String humanChoice() {
  stdout.write('Please choose Rock, Paper or Scissors:');
  String? input;
  do {
    input = stdin.readLineSync();

    if (input!.toLowerCase() == 'rock' ||
        input.toLowerCase() == 'paper' ||
        input.toLowerCase() == 'scissors' ||
        input.toLowerCase() == 'exit') {
      break;
    }
    print('Unsuitable option. Try again!');
  } while (true);
  return input.toLowerCase();
}

int resultForHuman(String robot, String human) {
  switch (robot) {
    case 'rock':
      if (human == 'paper') return 1;
      if (human == 'scissors') return -1;
      return 0;
    case 'paper':
      if (human == 'rock') return -1;
      if (human == 'scissors') return 1;
      return 0;
    case 'scissors':
      if (human == 'paper') return -1;
      if (human == 'rock') return 1;
      return 0;
    default:
      return 0;
  }
}
