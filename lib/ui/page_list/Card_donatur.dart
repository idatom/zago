import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zakat/ui/page_list/list/Item_donatur.dart';

class CardDonatur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "List Donatur",
      )),
      body: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: LihatDonatur(),
        ),
      ),
    );
  }
}
