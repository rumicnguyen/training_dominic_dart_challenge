int drawingSquare(int squareSize) {
  if (squareSize <= 0) return 0;
  String horizontalLine = ' ---' * squareSize;
  String verticalLine = '|   ' * (squareSize + 1);

  for (int i = 0; i < squareSize; i++) {
    print(horizontalLine);
    print(verticalLine);
  }
  print(horizontalLine);
  return 1;
}
