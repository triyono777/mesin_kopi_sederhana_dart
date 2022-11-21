class Pegawai {
  var nomorId = '0001';
  var username;
  var password;
  var nama = 'budi doremi';
  bool absenMasuk(username, password) {
    if (username == 'budi' && password == '123') {
      print('$nama presensi masuk....');
      return true;
    } else {
      print('gagal masuk');
      return false;
    }
  }

  bool absenKeluar() {
    print('$nama presensi keluar....');
    return false;
  }

  cetakProfil() {
    print('nama: $nama');
    print('nomorId: $nomorId');
  }
}
