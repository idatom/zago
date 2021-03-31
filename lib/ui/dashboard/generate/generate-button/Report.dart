import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:zakat/ui/helper/ColorTheme.dart';
import 'package:zakat/pdf-api/pdf_api.dart';

class Report extends StatefulWidget {
  final String _icon, _name;
  const Report(this._icon, this._name);
  @override
  ButtonMenuState createState() => ButtonMenuState();
}

class ButtonMenuState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Future<void> Report() async {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Center(
                child: Text(
                  "Proses",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
              ),
              content: SizedBox(
                width: 50,
                height: 20,
                child: Center(
                  child: Text(
                    "Convert data to pdf",
                  ),
                ),
              ),
              actions: [
                // ignore: deprecated_member_use
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: Colors.blue),
                  ),
                  child: Text(
                    "MUZAKI",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  onPressed: () async {
                    final pdfFile = await PdfApi.generateDonatur();
                    PdfApi.openFile(pdfFile);
                  },
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: Colors.blue),
                  ),
                  child: Text(
                    "PENERIMA",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  onPressed: () async {
                    final pdfFile = await PdfApi.generatePenerima();
                    PdfApi.openFile(pdfFile);
                  },
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(color: Colors.red),
                  ),
                  child: Text(
                    "Exit",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    }

    return TextButton(
      child: Column(
        children: [
          Image.asset(
            widget._icon,
            width: 42,
            height: 42,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            widget._name,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          )
        ],
      ),
      onPressed: () {
        Report();
      },
    );
  }
}
