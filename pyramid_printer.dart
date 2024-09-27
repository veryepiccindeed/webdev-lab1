void printPyramid(List<int> numbers) {
  numbers.sort();
  String buildRow(int row, int currentIndex, int index, String output) {
    return (index > row)
        ? output
        : buildRow(row, currentIndex + 1, index + 1, output + '${numbers[currentIndex]}   ');
  }

  void printRow(int row, int spaces, int currentIndex) {
    while (true) {
      if (currentIndex >= numbers.length) return;

      String rowOutput = ' ' * (spaces * 2);
      rowOutput = buildRow(row, currentIndex, 0, rowOutput);
      print(rowOutput);

      printRow(row + 1, spaces - 1, currentIndex + row + 1);
      break;
    }
  }

  printRow(0, numbers.length - 1, 0);
}
