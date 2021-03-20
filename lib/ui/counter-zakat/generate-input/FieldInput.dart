import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zakat/ui/helper/DropShadow.dart';

class FieldInput extends StatelessWidget {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 30, left: 30),
      width: 270,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [DropShadow().boxShadow]),
      child: TextFormField(
        controller: textController,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: "Jumlah Keluarga",
        ),
      ),
    );
  }
}
