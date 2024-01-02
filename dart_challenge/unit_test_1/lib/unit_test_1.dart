List<int> divisor(int number) {
  var numbers = <int>[];
  for (int i = 1; i <= number; i++) {
    if (number % i == 0) numbers.add(i);
  }
  return numbers;
}
