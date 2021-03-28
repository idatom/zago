import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zakat/ui/page_list_dash/item/Penerima_item.dart';

class PenerimaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Daftar Penerima",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: PushPenerima(),
        ),
      ),
    );
  }
}
