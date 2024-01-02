import 'package:exercise_1/exercise_1.dart';
import 'package:test/test.dart';

void main() {
  test('drawing', () {
    expect(drawingSquare(1), 1);
    expect(drawingSquare(5), 1);
    expect(drawingSquare(-1), 0);
  });
}
