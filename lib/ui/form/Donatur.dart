import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show
        AppBar,
        BorderRadius,
        BoxDecoration,
        BoxShadow,
        BuildContext,
        Center,
        Color,
        Colors,
        Column,
        Container,
        EdgeInsets,
        FontWeight,
        Icon,
        Icons,
        InputBorder,
        InputDecoration,
        MainAxisSize,
        Offset,
        Padding,
        // ignore: deprecated_member_use
        RaisedButton,
        RoundedRectangleBorder,
        Row,
        Scaffold,
        SingleChildScrollView,
        SizedBox,
        StatelessWidget,
        Text,
        TextAlign,
        TextFormField,
        TextInputType,
        TextStyle,
        Widget,
        showDatePicker;

class FormDonatur extends StatelessWidget {
  final nameController = TextEditingController();
  final alamatController = TextEditingController();
  final pekerjaanController = TextEditingController();
  final keluargaController = TextEditingController();
  final zakatController = TextEditingController();
  final bentukController = TextEditingController();
  final tanggalController = TextEditingController();
  final totalController = TextEditingController();

  final format = DateFormat("dd-MM-yyyy");

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference donatur = firestore.collection('donatur');
    //.
    return Scaffold(
      backgroundColor: Color(0xedfffefe),
      appBar: AppBar(
        title: Text(
          "Form Donatur",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 20,
          ),
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                          ),
                        ],
                        color: Color(0xedfffefe),
                      ),
                      padding: const EdgeInsets.only(
                        left: 23,
                        right: 23,
                        top: 37,
                        bottom: 37,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: 170,
                            height: 50,
                            child: Text(
                              "INPUT MUZAKI",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff0084ff),
                                fontSize: 18,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Container(
                            width: 300,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                ),
                              ],
                              color: Color(0xedfffefe),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: Center(
                                child: TextFormField(
                                  keyboardType: TextInputType.name,
                                  controller: nameController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Nama',
                                    hintText: 'Nama lengkap',
                                    icon: Icon(Icons.people_alt),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 300,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                ),
                              ],
                              color: Color(0xedfffefe),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: Center(
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  controller: alamatController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Alamat',
                                    hintText: 'Alamat lengkap',
                                    icon: Icon(Icons.home),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 300,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                ),
                              ],
                              color: Color(0xedfffefe),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: Center(
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  controller: pekerjaanController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Pekerjaan',
                                    hintText: 'Pekerjaan saat ini',
                                    icon: Icon(Icons.work),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 300,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                ),
                              ],
                              color: Color(0xedfffefe),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: Center(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: keluargaController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Keluarga',
                                    hintText: 'Jumlah anggota keluarga',
                                    icon: Icon(Icons.people),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 300,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                ),
                              ],
                              color: Color(0xedfffefe),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: Center(
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  controller: zakatController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Zakat',
                                    hintText: 'Jenis Zakat',
                                    icon: Icon(Icons.list),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 300,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                ),
                              ],
                              color: Color(0xedfffefe),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: Center(
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  controller: bentukController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Bentuk',
                                    hintText: 'Bentuk zakat',
                                    icon: Icon(Icons.payment),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 300,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                ),
                              ],
                              color: Color(0xedfffefe),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: Center(
                                child: DateTimeField(
                                  format: format,
                                  controller: tanggalController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Tanggal',
                                    hintText: '00-00-0000',
                                    icon: Icon(Icons.date_range_rounded),
                                  ),
                                  onShowPicker: (context, currentValue) {
                                    return showDatePicker(
                                        context: context,
                                        firstDate: DateTime(1900),
                                        initialDate:
                                            currentValue ?? DateTime.now(),
                                        lastDate: DateTime(2100));
                                  },
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 300,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                ),
                              ],
                              color: Color(0xedfffefe),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              child: Center(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  controller: totalController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Total',
                                    hintText: 'Jumlah total dizakatkan',
                                    icon: Icon(Icons.money_off),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 40),
                          SizedBox(
                            width: 140,
                            height: 45,
                            // ignore: deprecated_member_use
                            child: RaisedButton(
                              color: Colors.blueAccent,
                              onPressed: () {
                                // ADD DATA TO FIRESTORE
                                donatur.add({
                                  'name': nameController.text,
                                  'alamat': alamatController.text,
                                  'pekerjaan': pekerjaanController.text,
                                  'keluarga':
                                      int.tryParse(keluargaController.text) ??
                                          0,
                                  'zakat': zakatController.text,
                                  'bentuk': bentukController.text,
                                  'tanggal': tanggalController.text,
                                  'total':
                                      int.tryParse(totalController.text) ?? 0,
                                });

                                nameController.text = '';
                                alamatController.text = '';
                                pekerjaanController.text = '';
                                keluargaController.text = '';
                                zakatController.text = '';
                                bentukController.text = '';
                                tanggalController.text = '';
                                totalController.text = '';
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: Text(
                                'Simpan',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xedfffefe),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
