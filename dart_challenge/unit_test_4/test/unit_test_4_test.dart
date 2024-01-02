import 'package:unit_test_4/unit_test_4.dart';
import 'package:test/test.dart';

void main() {
  test('validate', () {
    expect(validate('adhah@Edksla123'), true);
  });
  test('validate without number', () {
    expect(validate('asdfsa@SD'), false);
  });

  test('validate without charactor', () {
    expect(validate('13!24132@#'), false);
  });
  test('validate without special charactors', () {
    expect(validate('13!24132@#'), false);
  });
  test('validate with length less than 7', () {
    expect(validate('12@ab'), false);
  });
  test('validate with full number', () {
    expect(validate('12123412'), false);
  });
  test('validate with full charactor', () {
    expect(validate('asdasdDHGhiads'), false);
  });
  test('validate with full special charactors', () {
    expect(validate('!@#\$%^&*'), false);
  });
}
