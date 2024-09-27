import 'input_output.dart';
import 'random_generator.dart';
import 'sorting.dart';
import 'pyramid_printer.dart';

void main() {
  int jumlahAngka = getJumlahAngka();
  List<int> angkaAcak = generateRandomNumbers(jumlahAngka);

  printNumbers("Angka Acak:", angkaAcak);

  int pilihan = getMenuChoice();

  while (pilihan != 5) {
    switch (pilihan) {
      case 1:
        angkaAcak = bubbleSort(angkaAcak);
        printNumbers("Hasil Bubble Sort:", angkaAcak);
        break;
      case 2:
        angkaAcak = reverseNumbers(angkaAcak);
        printNumbers("Hasil Inversi:", angkaAcak);
        break;
      case 3:
        angkaAcak = shuffleNumbers(angkaAcak);
        printNumbers("Hasil Acak:", angkaAcak);
        break;
      case 4:
        print("Piramida:");
        printPyramid(angkaAcak); // Memanggil fungsi piramida yang sudah diperbaiki
        break;
    }
    pilihan = getMenuChoice();
  }
}