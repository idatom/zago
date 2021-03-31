import 'dart:collection';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
//import 'package:flutter/cupertino.dart';
import 'package:open_file/open_file.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:path_provider/path_provider.dart';
import 'package:zakat/model/donatur.dart';
import 'package:zakat/model/penerima.dart';

class PdfApi {
  static Widget buildHeadline(Uint8List image) => Container(
      padding: EdgeInsets.only(bottom: 3 * PdfPageFormat.mm),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 2, color: PdfColors.black)),
      ),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: SizedBox(
                  height: 2 * PdfPageFormat.cm,
                  child: Image(MemoryImage(image)))),
          Expanded(
              flex: 5,
              child: Center(
                  child: Column(children: [
                Text("Mushola Nurul Huda",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text('Jl. Cemara RT 02 RW 08 Kel. Grogol Kec. Limo')
              ])))
        ],
      ));

  static Future<File> generateDonatur() async {
    final imageJpg = (await rootBundle.load('assets/images/nurul-hidayah.jpeg'))
        .buffer
        .asUint8List();

    CollectionReference ref = FirebaseFirestore.instance.collection("donatur");
    QuerySnapshot eventsQuery = await ref.get();

    print(eventsQuery);

    HashMap<Object, Donatur> eventsHashMap = new HashMap<Object, Donatur>();

    eventsQuery.docs.forEach((document) {
      eventsHashMap.putIfAbsent(
          document['name'],
          () => new Donatur(
              tanggal: document['tanggal'],
              nama: document['name'],
              alamat: document['alamat'],
              keluarga: document['keluarga'],
              zakat: document['zakat'],
              bentuk: document['bentuk'],
              total: document['total']));
    });

    final pdf = Document();

    final header = [
      "Tanggal",
      "Nama",
      "Alamat",
      "Keluarga",
      "Zakat",
      "Bentuk",
      "Total"
    ];

    final data = eventsHashMap.values
        .map((doc) => [
              doc.tanggal,
              doc.nama,
              doc.alamat,
              doc.keluarga,
              doc.zakat,
              doc.bentuk,
              doc.total
            ])
        .toList();

    pdf.addPage(MultiPage(
        pageFormat: PdfPageFormat.a4,
        build: (context) => <Widget>[
              buildHeadline(imageJpg),
              SizedBox(height: 1 * PdfPageFormat.cm),
              Paragraph(
                  text:
                      'Berikut adalah data-data donatur zakat yang tercatat oleh Pengelola Zakat Mushola Nurul Huda'),
              Table.fromTextArray(headers: header, data: data)
            ],
        footer: (context) {
          final text = 'Page ${context.pageNumber} of ${context.pagesCount}';

          return Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(top: 1 * PdfPageFormat.cm),
              child: Text(text, style: TextStyle(color: PdfColors.black)));
        }));

    return saveDocument(name: "Data_Donatur.pdf", pdf: pdf);
  }

  static Future<File> generatePenerima() async {
    final imageJpg = (await rootBundle.load('assets/images/nurul-hidayah.jpeg'))
        .buffer
        .asUint8List();

    CollectionReference ref = FirebaseFirestore.instance.collection("penerima");
    QuerySnapshot eventsQuery = await ref.get();

    print(eventsQuery);

    HashMap<Object, Penerima> eventsHashMap = new HashMap<Object, Penerima>();

    eventsQuery.docs.forEach((document) {
      eventsHashMap.putIfAbsent(
          document['name'],
          () => new Penerima(
              tanggal: document['tanggal'],
              nama: document['name'],
              alamat: document['alamat'],
              keluarga: document['keluarga'],
              kelamin: document['kelamin'],
              bentuk: document['bentuk'],
              total: document['total']));
    });

    final pdf = Document();

    final header = [
      "Tanggal",
      "Nama",
      "Alamat",
      "Keluarga",
      "Kelamin",
      "Bentuk",
      "Total"
    ];

    final data = eventsHashMap.values
        .map((doc) => [
              doc.tanggal,
              doc.nama,
              doc.alamat,
              doc.keluarga,
              doc.kelamin,
              doc.bentuk,
              doc.total
            ])
        .toList();

    pdf.addPage(MultiPage(
        pageFormat: PdfPageFormat.a4,
        build: (context) => <Widget>[
              buildHeadline(imageJpg),
              SizedBox(height: 1 * PdfPageFormat.cm),
              Paragraph(
                  text:
                      'Berikut adalah data-data penerima zakat yang tercatat oleh pengelola zakat Mushola Nurul Huda'),
              Table.fromTextArray(headers: header, data: data)
            ],
        footer: (context) {
          final text = 'Page ${context.pageNumber} of ${context.pagesCount}';

          return Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(top: 1 * PdfPageFormat.cm),
              child: Text(text, style: TextStyle(color: PdfColors.black)));
        }));

    return saveDocument(name: "Data_Penerima.pdf", pdf: pdf);
  }

  static Future<File> saveDocument({
    String name,
    Document pdf,
  }) async {
    final bytes = await pdf.save();

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');

    await file.writeAsBytes(bytes);

    return file;
  }

  static Future openFile(File file) async {
    final url = file.path;

    await OpenFile.open(url);
  }
}
