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
            return SimpleDialog(
              title: Center(
                child: Text(
                  "Proses",
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
              ),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Center(
                          child: Text(
                            "convert data to pdf",
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Data muzaki :",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide(color: Colors.blue),
                    ),
                    child: Text(
                      "Print",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    onPressed: () async {
                      final pdfFile = await PdfApi.generateDonatur();
                      PdfApi.openFile(pdfFile);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Data penerima :",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide(color: Colors.blue),
                    ),
                    child: Text(
                      "Print",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    onPressed: () async {
                      final pdfFile = await PdfApi.generatePenerima();
                      PdfApi.openFile(pdfFile);
                    },
                  ),
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 0),
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Text(
                      "Exit",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
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
