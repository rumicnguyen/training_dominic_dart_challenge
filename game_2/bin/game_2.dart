import 'package:game_2/game_2.dart' as game_2;

void main(List<String> arguments) {
  int min = 0, max = 100, count = 1;
  int random = game_2.randomNumber();
  print('Type exit to quit the game');
  do {
    int choice = game_2.choice(min, max);
    if (choice == -1) {
      print('Exit...');
      break;
    }
    if (choice == random) {
      print('Bingo! You tried $count times');
      break;
    } else if (choice > random) {
      max = choice;
      print('-> You are higher.');
    } else {
      min = choice;
      print('-> You are lower.');
    }
    count++;
  } while (true);
}
