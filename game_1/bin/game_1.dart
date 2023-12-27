import 'package:game_1/game_1.dart' as game_1;

// [1, 2, 3]
// 1 win 3, 2 win 1, 3 win 2
const choices = <String>['rock', 'paper', 'scissors'];
void main(List<String> arguments) {
  int robotCore = 0, humanCore = 0, draw = 0, round = 1;
  // bool isNotExit = true;
  print(
      '''Welcome to Rock, Paper, Scissors. \nType 'exit' to stop the game.''');
  do {
    print('Round $round.');
    String humanChoice = game_1.humanChoice();
    if (humanChoice == 'exit') {
      // isNotExit = false;
      break;
    }
    String robotChoice = game_1.randomChoice();
    int core = game_1.resultForHuman(robotChoice, humanChoice);
    switch (core) {
      case 1:
        humanCore++;
        print('Robot: $robotChoice. You win.');
      case -1:
        robotCore++;
        print('Robot: $robotChoice. You lost.');
      case 0:
        draw++;
         print('Robot: $robotChoice. Draw.');
    }
    round++;
  } while (true);

  print('Robot core: $robotCore.');
  print('Draw: $draw.');
  print('Your core: $humanCore.');
}
