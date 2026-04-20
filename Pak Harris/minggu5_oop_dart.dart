void main() {
  print("=== Program Biodata Mahasiswa (OOP) ===\n");

  // Membuat objek
  Mahasiswa mhs1 = Mahasiswa("Alan", "123456", "Sistem Informasi", 3.7);
  Mahasiswa mhs2 = Mahasiswa("Budi", "654321", "Teknik Informatika", 2.9);

  // Menampilkan biodata
  print("Data Mahasiswa 1:");
  mhs1.tampilkanBiodata();
  print("Predikat: ${mhs1.cekPredikat()}\n");

  print("Data Mahasiswa 2:");
  mhs2.tampilkanBiodata();
  print("Predikat: ${mhs2.cekPredikat()}"); 
}

// Class Mahasiswa
class Mahasiswa {
  String nama;
  String nim;
  String prodi;
  double ipk;

  // Constructor
  Mahasiswa(this.nama, this.nim, this.prodi, this.ipk);

  // Method tampil biodata
  void tampilkanBiodata() {
    print("Nama: $nama");
    print("NIM: $nim");
    print("Prodi: $prodi");
    print("IPK: $ipk");
  }

  // Method cek predikat
  String cekPredikat() {
    if (ipk >= 3.5) {
      return "Cumlaude";
    } else if (ipk >= 3.0) {
      return "Sangat Baik";
    } else {
      return "Cukup";
    }
  }
}