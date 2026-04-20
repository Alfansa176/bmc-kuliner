import 'dart:io';

// Input Bilangan
void main() {
  stdout.write("Masukkan Bilangan A: ");
  int a = int.parse(stdin.readLineSync()!.trim());

  stdout.write("Masukkan Bilangan B: ");
  int b = int.parse(stdin.readLineSync()!.trim());

//Validasi Input
  double hasilBagi = a / b;
  bool isALebihBesar = a > b;

//Ouput
  print("\n===== Hasil Perhitungan =====");
  print("Bilangan A: $a");
  print("Bilangan B: $b");

  print("Hasil Penjumlahan: ${a + b}");
  print("Hasil Pengurangan: ${a - b}");
  print("Hasil Perkalian: ${a * b}");
  print("Hasil Pembagian: $hasilBagi");
  print("Sisa Bagi: ${a % b}");

  print("Apakah A lebih besar dari B? $isALebihBesar");
}