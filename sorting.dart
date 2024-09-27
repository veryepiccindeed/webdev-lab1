List<int> bubbleSort(List<int> numbers) {
  int i = numbers.length - 1;
  while (i > 0) {
    if (numbers[i - 1] > numbers[i]) {
      int temp = numbers[i - 1];
      numbers[i - 1] = numbers[i];
      numbers[i] = temp;
      i = numbers.length; // Mulai lagi dari akhir jika ada pertukaran
    }
    i--;
  }
  return numbers;
}

List<int> reverseNumbers(List<int> numbers) {
  return numbers.reversed.toList(); // Tidak perlu loop di sini
}

List<int> shuffleNumbers(List<int> numbers) {
  numbers.shuffle(); // Fungsi shuffle bawaan Dart
  return numbers;
}