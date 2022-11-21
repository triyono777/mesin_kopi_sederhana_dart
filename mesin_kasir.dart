class MesinKasir {
  num _penghasilan = 0;

  set uangMasuk(num value) {
    _penghasilan += value;
    // print('uang masuk $_penghasilan');
  }

  get totalPenghasilan {
    // print('uang hasil $_penghasilan');

    return _penghasilan;
  }
}
