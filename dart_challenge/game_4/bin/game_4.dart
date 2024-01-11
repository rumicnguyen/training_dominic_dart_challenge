import 'package:game_4/game_4.dart' as game_4;

void main(List<String> arguments) {
  int length = game_4.generateLength();
  var random = game_4.random(length);
  var result = <String>[];
  int count = 0;
  for (int i = 0; i < length; i++) {
    result.add('_');
  }

  game_4.printResult(result);
  do {
    String input = game_4.choice(result);
    if (input == 'exit') {
      print('Exit...');
      break;
    }
    if (random.containsValue(input)) {
      random.forEach((key, value) {
        if (value == input) {
          result[key] = value;
          count++;
        }
      });
      game_4.printResult(result);
    } else {
      print('Not contain letter: $input');
    }

    if (count == length) {
      print('Bingo!');
      break;
    }
  } while (true);
}
