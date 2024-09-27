import 'dart:io';

int getJumlahAngka() {
  stdout.write("Masukkan jumlah angka: ");
  return int.parse(stdin.readLineSync()!);
}

int getMenuChoice() {
  print("\nPilihan:");
  print("1. Bubble Sort");
  print("2. Inversi");
  print("3. Acak Kembali");
  print("4. Cetak Piramida");
  print("5. Keluar");
  stdout.write("Masukkan pilihan Anda: ");
  return int.parse(stdin.readLineSync()!);
}

void printNumbers(String judul, List<int> numbers) {
  print('\n$judul');
  int i = 0;
  while (i < numbers.length) {
    print('Angka ke-${i + 1}: ${numbers[i]}');
    i++;
  }
}