import 'dart:io';

void main() {
  print("=== Program Kalkulasi Nilai Mahasiswa ===");

  // Input nama dan umur
  stdout.write("Masukkan nama: ");
  String nama = stdin.readLineSync()!;

  stdout.write("Masukkan umur: ");
  int umur = int.parse(stdin.readLineSync()!);

  print("\nHalo, $nama! Umur Anda $umur tahun.");
  print("Status Umur: ${cekUmur(umur)}");

  // Input nilai mahasiswa
  List<int> nilai = [];

  print("\nMasukkan 5 nilai mata kuliah:");
  for (int i = 0; i < 5; i++) {
  while (true) {
    stdout.write("Nilai ke-${i + 1}: ");
    String? input = stdin.readLineSync();

    if (input != null && int.tryParse(input) != null) {
      nilai.add(int.parse(input));
      break;
    } else {
      print("Input harus berupa angka! Coba lagi.");
    }
  }
}
  // Tampilkan nilai
  print("\nDaftar Nilai:");
  for (int i = 0; i < nilai.length; i++) {
    print("Nilai ke-${i + 1}: ${nilai[i]}");
  }

  // Hitung rata-rata
  double rata = hitungRataRata(nilai);
  print("\nRata-rata: $rata");

  // Predikat
  String predikat = tentukanPredikat(rata);
  print("Predikat: $predikat");

  // Status kelulusan
  String status = cekKelulusan(rata);
  print("Status: $status");
}

// Fungsi menghitung rata-rata
double hitungRataRata(List<int> nilai) {
  int total = 0;

  for (int n in nilai) {
    total += n;
  }

  return total / nilai.length;
}

// Fungsi menentukan predikat
String tentukanPredikat(double rata) {
  if (rata >= 80) {
    return "A";
  } else if (rata >= 70) {
    return "B";
  } else if (rata >= 60) {
    return "C";
  } else if (rata >= 50) {
    return "D";
  } else {
    return "E";
  }
}

// Fungsi cek kelulusan
String cekKelulusan(double rata) {
  if (rata >= 60) {
    return "LULUS";
  } else {
    return "TIDAK LULUS";
  }
}

// Fungsi cek umur (nilai tambah)
String cekUmur(int umur) {
  if (umur < 17) {
    return "Belum Cukup Umur";
  } else if (umur <= 25) {
    return "Usia Mahasiswa";
  } else {
    return "Usia Profesional Muda";
  }
}