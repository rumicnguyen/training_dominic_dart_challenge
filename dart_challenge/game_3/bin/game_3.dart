import 'package:game_3/game_3.dart' as game_3;

void main(List<String> arguments) {
  int bulls = 0, cows = 0;
  var random = game_3.random();
  print('''Welcome to Cows and Bulls\nType 'exit' to stop the game''');
  do {
    int attempts = game_3.choice();
    if (attempts == -1) {
      print('Exit...');
      break;
    }
    var mapInput = game_3.intToMap(attempts);
    for (int i = 1; i <= 4; i++) {
      if (random.containsValue(mapInput[i])) {
        if (random[i] == mapInput[i]) {
          cows++;
        } else {
          bulls++;
        }
      }
    }
    if (cows == 4) {
      print(
          'Bingo! the number is ${random[1]}${random[2]}${random[3]}${random[4]}');
      break;
    }
    print('Attempts: $attempts \nCows: $cows, Bulls: $bulls');
    cows = 0;
    bulls = 0;
  } while (true);
}
