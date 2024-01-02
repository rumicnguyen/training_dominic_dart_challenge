import 'dart:math';

bool check(int number) {
  if (number < 2) return false;
  for (int i = 1; i < sqrt(number).round(); i++) {
    if (number % i == 0) return false;
  }
  return true;
}
