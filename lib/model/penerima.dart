import 'package:flutter/cupertino.dart';

class Penerima {
  static final String columnId = "_id";
  static final String columnTanggal = "tanggal";
  static final String columnNama = "name";
  static final String columnAlamat = "alamat";
  static final String columnGol = 'golongan';
  static final String columnKeluarga = "keluarga";
  static final String columnGender = "kelamin";
  static final String columnBentuk = "bentuk";
  static final String columnTotal = "total";

  Penerima(
      {@required this.tanggal,
      @required this.nama,
      this.alamat,
      this.keluarga,
      this.kelamin,
      this.bentuk,
      this.total});

  final String tanggal, nama, alamat, kelamin, bentuk;
  final int keluarga;
  final double total;

  Map toMap() {
    Map<String, dynamic> map = {
      columnTanggal: tanggal,
      columnNama: nama,
      columnAlamat: alamat,
      columnKeluarga: keluarga.toString(),
      columnGender: kelamin,
      columnBentuk: bentuk,
      columnTotal: total.toString()
    };

    return map;
  }

  static Penerima fromMap(Map map) {
    return new Penerima(
        tanggal: map[columnTanggal],
        nama: map[columnNama],
        alamat: map[columnAlamat],
        keluarga: map[columnKeluarga],
        kelamin: map[columnGender],
        bentuk: map[columnBentuk],
        total: map[columnTotal]);
  }
}
