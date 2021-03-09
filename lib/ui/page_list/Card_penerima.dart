import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zakat/ui/page_list/list/Item_penerima.dart';

class CardPenerima extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "List Penerima",
      )),
      body: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: LihatPenerima(),
        ),
      ),
    );
  }
}
