import '../class/mahasiswa.dart';

void main(){
  print('Mahasiswa');
  print('======================');

  var maha = Mahasiswa('Arya Pramudya Akbar', '1123150004', 'Teknik Informatika', 2023);
  maha.tampilkanData();
  print('======================');

  print('\nAsisten Dosen');
  print('======================');

  var asdos = AsistenDosen(nama: 'Ilham Maulana', nim: '112197372', jurusan: 'Teknik Elektro', angkatan: 2022, mataKuliah: 'Kesetrum');
  asdos.tampilkanData();
  print('======================');

  print('\nMahasiswa Aktif');
  print('======================');

  var mahaAktif = MahasiswaAktif(nama: 'David Gadgetin', nim: '1122356689', jurusan: 'Computer Science', angkatan: 2024);
  mahaAktif.daftar('Algoritma');
  mahaAktif.daftar('Kalkulus');
  mahaAktif.daftar('Aljabar Linear');
  mahaAktif.daftar('Pengantar Manajemen');
  print('======================');
  mahaAktif.tampilkanData();
  print('======================');
}