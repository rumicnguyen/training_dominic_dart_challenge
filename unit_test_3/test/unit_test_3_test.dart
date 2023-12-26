import 'package:unit_test_3/unit_test_3.dart';
import 'package:test/test.dart';

void main() {
  test('check -1', () {
    expect(check(-1), false);
  });
  test('check 0', () {
    expect(check(0), false);
  });
  test('check 2', () {
    expect(check(2), true);
  });
  test('check 5', () {
    expect(check(2), true);
  });

  test('check 20', () {
    expect(check(20), false);
  });
}
