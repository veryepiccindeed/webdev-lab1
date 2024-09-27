import 'dart:math';

List<int> generateRandomNumbers(int count) {
  final random = Random();
  final numbers = <int>[];
  int i = 0;
  while (i < count) {
    numbers.add(random.nextInt(10));
    i++;
  }
  return numbers;
}