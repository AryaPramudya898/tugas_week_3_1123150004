class Mahasiswa{
  String? nama;
  String? nim;
  String? jurusan;
  int? angkatan;

  
  Mahasiswa(this.nama, this.nim, this.jurusan, this.angkatan);


  
  void tampilkanData(){
    print('NAMA : $nama');
    print('NIM : $nim');
    print('JURUSAN : $jurusan');
    print('ANGKATAN : $angkatan');
  }
}

class AsistenDosen extends Mahasiswa{
  String? mataKuliah;

  AsistenDosen({
    required String nama,
    required String nim,
    required String jurusan,
    required int angkatan,
    required this.mataKuliah,
  }) : super ( 
    nama,
    nim,
    jurusan,
    angkatan,
  );

  
  @override
  void tampilkanData(){
    super.tampilkanData(); 
    print('MATA KULIAH : $mataKuliah');
  }
}


abstract class Pendaftaran{
  void daftar(String matkul);
}

class MahasiswaAktif extends Mahasiswa implements Pendaftaran{
  List<String> matkulDiAmbil = [];

  MahasiswaAktif({
    required String nama,
    required String nim,
    required String jurusan,
    required int angkatan,
  }) : super (
    nama,
    nim,
    jurusan,
    angkatan
  );

  @override 
  void daftar(String matkul){
    matkulDiAmbil.add(matkul);
    print('$nama mengambil mata kuliah $matkul');
  }

  @override 
  void tampilkanData(){
    super.tampilkanData(); 
    print('MATA KULIAH : $matkulDiAmbil');
  }
}