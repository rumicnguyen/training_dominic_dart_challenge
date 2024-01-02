List<int> check(List<int> a, List<int> b) {
  var result = <int>[];
  print('List 1: $a');
  print('List 2: $b');
  for (int element in a) {
    if (b.contains(element) && result.contains(element) == false)
      result.add(element);
  }
  if (result.isNotEmpty) {
    result.sort();
  }
  print('Result: $result');
  return result;
}
