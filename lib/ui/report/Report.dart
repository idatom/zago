import 'package:flutter/material.dart';
import 'package:zakat/pdf-api/pdf_api.dart';

class ReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0084ff),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              SizedBox(
                width: 188,
                height: 60,
                child: ElevatedButton(
                  onPressed: () async {
                    final pdfFile = await PdfApi.generateDonatur();

                    PdfApi.openFile(pdfFile);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                  child: Text('Cetak Data'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 188,
                height: 60,
                child: ElevatedButton(
                  onPressed: () async {
                    final pdfFile = await PdfApi.generatePenerima();
                    PdfApi.openFile(pdfFile);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                  child: null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
