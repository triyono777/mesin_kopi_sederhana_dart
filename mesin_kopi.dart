import 'dart:io';

import 'mesin_kasir.dart';

class MesinKopi {
  var _stokAir = 300;
  var _stokKopi = 100;
  var _stokSusu = 100;
  // int _penghasilan = 0;

  MesinKasir _mesinKasir = MesinKasir();
  set uangMasuk(int value) {
    _mesinKasir.uangMasuk = value;
    ;
    // _penghasilan += value;
    print('uang masuk ${_mesinKasir.totalPenghasilan}');
  }

  get totalPenghasilan {
    // print('uang hasil $_penghasilan');
    print('uang hasil ${_mesinKasir.totalPenghasilan}');
    return _mesinKasir.totalPenghasilan;
  }

  String? tampilMenu() {
    print('pilihan menu:');
    print('1.coffe latte');
    print('2.americano');
    print('3.espresso');
    stdout.write('masukkan pilihan menu 1/2/3:');
    String? pilihan = stdin.readLineSync();
    return pilihan;
  }

  membuatKopi(menuTerpilih) {
//1.Coffe latte = 100 air,30 kopi, 70 susu, harga :30000
// 2.Americano = 100 air,50 kopi,  50 susu, harga:27000
// 3.Espresso = 100 air,100 kopi, 0 susu,harga 25000
    stdout.write('masukkan uang:');

    var uang = num.parse(stdin.readLineSync() ?? '0');
    switch (menuTerpilih) {
      case '1':
        if (_stokAir < 0 || _stokKopi < 0 || _stokSusu < 0) {
          print('stok tidak cukup');
        } else {
          _kembalian(harga: 30000, uang: uang);
          _stokAir -= 100;
          _stokKopi -= 30;
          _stokSusu -= 70;
          // _penghasilan += 30000;
          _mesinKasir.uangMasuk = 30000;
          print('silakan coffe latte anda');
        }
        break;
      case '2':
        if (_stokAir < 0 || _stokKopi < 0 || _stokSusu < 0) {
          print('stok tidak cukup');
        } else {
          _kembalian(harga: 27000, uang: uang);

          _stokAir -= 100;
          _stokKopi -= 50;
          _stokSusu -= 50;
          // _penghasilan += 27000;
          _mesinKasir.uangMasuk = 27000;
          print('silakan americano anda');
        }
        break;
      case '3':
        if (_stokAir < 0 || _stokKopi < 0 || _stokSusu < 0) {
          print('stok tidak cukup');
        } else {
          _kembalian(harga: 25000, uang: uang);

          _stokAir -= 100;
          _stokKopi -= 100;
          _stokSusu -= 0;
          // _penghasilan += 25000;
          _mesinKasir.uangMasuk = 25000;

          print('silakan espresso anda');
        }
        break;
      default:
        print('menu tidak tersedia');
        break;
    }
  }

  cekStok() {
    print('stok: ');
    print('Air: $_stokAir ');
    print('Kopi: $_stokKopi ');
    print('Susu: $_stokSusu ');
  }

  bool _kembalian({num uang = 0, num harga = 0}) {
    if (uang < harga) {
      print('uang kurang break');
      return false;
    } else if (uang > harga) {
      var kembalian = uang - harga;
      print('kembalian anda = $kembalian');
      return true;
    } else {
      return true;
    }
  }
}
