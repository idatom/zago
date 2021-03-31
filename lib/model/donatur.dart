import 'package:flutter/cupertino.dart';

class Donatur {
  static final String columnId = "_id";
  static final String columnTanggal = "tanggal";
  static final String columnNama = "name";
  static final String columnAlamat = "alamat";
  static final String columnKeluarga = "keluarga";
  static final String columnZakat = "zakat";
  static final String columnBentuk = "bentuk";
  static final String columnTotal = "total";

  Donatur(
      {@required this.tanggal,
      @required this.nama,
      this.alamat,
      this.keluarga,
      this.zakat,
      this.bentuk,
      this.total});

  final String tanggal, nama, alamat, zakat, bentuk;
  final int keluarga, total;

  Map toMap() {
    Map<String, dynamic> map = {
      columnTanggal: tanggal,
      columnNama: nama,
      columnAlamat: alamat,
      columnKeluarga: keluarga.toString(),
      columnZakat: zakat,
      columnBentuk: bentuk,
      columnTotal: total.toString()
    };

    return map;
  }

  static Donatur fromMap(Map map) {
    return new Donatur(
        tanggal: map[columnTanggal],
        nama: map[columnNama],
        alamat: map[columnAlamat],
        keluarga: map[columnKeluarga],
        zakat: map[columnZakat],
        bentuk: map[columnBentuk],
        total: map[columnTotal]);
  }
}
