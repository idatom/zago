import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
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
        TextEditingController,
        TextFormField,
        TextInputType,
        TextStyle,
        Widget,
        showDatePicker;
import 'package:intl/intl.dart';

class FormPenerima extends StatelessWidget {
  final nameController = TextEditingController();
  final alamatController = TextEditingController();
  final golonganController = TextEditingController();
  final keluargaController = TextEditingController();
  final genderController = TextEditingController();
  final tanggalController = TextEditingController();
  final moneyController = TextEditingController();

  final format = DateFormat("dd-MM-yyyy");

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference penerima = firestore.collection('penerima');
    //.
    return Scaffold(
      backgroundColor: Color(0xedfffefe),
      appBar: AppBar(
        title: Text(
          "Form Penerima",
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
                              "DAFTAR PENERIMA",
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
                                  controller: golonganController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Golongan',
                                    hintText: 'Kategori golongan',
                                    icon: Icon(Icons.label),
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
                                  controller: genderController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Kelamin',
                                    hintText: 'Jenis kelamin',
                                    icon: Icon(Icons.healing),
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
                                  controller: moneyController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Total',
                                    hintText: 'Jumlah total diterima',
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
                                penerima.add({
                                  'name': nameController.text,
                                  'alamat': alamatController.text,
                                  'golongan': golonganController.text,
                                  'keluarga':
                                      int.tryParse(keluargaController.text) ??
                                          0,
                                  'kelamin': genderController.text,
                                  'tanggal': tanggalController.text,
                                  'total':
                                      double.tryParse(moneyController.text) ??
                                          0,
                                });

                                nameController.text = '';
                                alamatController.text = '';
                                golonganController.text = '';
                                keluargaController.text = '';
                                genderController.text = '';
                                tanggalController.text = '';
                                moneyController.text = '';
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: Text(
                                'Terima',
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
