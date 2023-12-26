import 'package:unit_test_1/unit_test_1.dart';
import 'package:test/test.dart';

void main() {
  test('divisor', () {
    expect(divisor(8), [1, 2, 4, 8]);
    expect(divisor(501), [1, 3, 167, 501]);
  });
  test('divisor with exceptions', () {
    expect(divisor(0), []);
    expect(divisor(-1), []);
    expect(divisor(-40), []);
  });
}
