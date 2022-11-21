import 'mesin_kopi.dart';
import 'pegawai.dart';
import 'dart:io';

main() {
  var pegawai = Pegawai();
  var mesin = MesinKopi();
  stdout.write('masukan username: ');
  var username = stdin.readLineSync();
  stdout.write('masukan password: ');
  var password = stdin.readLineSync();

  var isLogin = pegawai.absenMasuk(username, password);
  while (isLogin == true) {
    print('Masukkan pilihan');
    print('1.Tampil Menu');
    print('2. Cek penghasilan');
    print('3. Cek stok');

    stdout.write('masukan Pilihan: ');
    var menu = stdin.readLineSync();
    switch (menu) {
      case '1':
        var pilihan = mesin.tampilMenu();
        mesin.membuatKopi(pilihan);
        break;
      case '2':
        print('penghasilan');
        print(mesin.totalPenghasilan);
        break;
      case '3':
        print('cek stok');
        mesin.cekStok();
        break;

      default:
        print('menu tidak ada');
        break;
    }

    stdout.write('Kembali ke menu? y/n: ');
    var lagi = stdin.readLineSync();
    if (lagi == 'y') {
      isLogin = true;
    } else {
      isLogin = false;
      print('total penghasilan: ${mesin.totalPenghasilan}');
      mesin.cekStok();
      pegawai.absenKeluar();
      print('terima kasih');
    }
  }
}
