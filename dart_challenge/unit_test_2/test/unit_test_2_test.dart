import 'package:unit_test_2/unit_test_2.dart';
import 'package:test/test.dart';

void main() {
  test('check contains', () {
    expect(
        check([1, 1, 2, 3, 5, 8, 89, 13, 21, 34, 55],
            [1, 2, 3, 4, 5, 6, 10, 7, 8, 9, 11, 12, 13]),
        [1, 2, 3, 5, 8, 13]);
  });
  test('check not contains', () {
    expect(check([1, 1, 2, 3, 5, 8, 89, 13, 21, 34, 55], [-1, -2, 0, 100]), []);
  });
  test('check with empty list', () {
    expect(check([], [0, -2, 21, 100]), []);
  });
}
