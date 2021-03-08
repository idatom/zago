import 'package:flutter/material.dart';
import 'package:zakat/ui/helper/ColorTheme.dart';
import 'package:zakat/ui/hukum/Text.dart';

class HukumZakat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hukum & Dalil Zakat",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xfffffefe),
            fontSize: 16,
            fontFamily: "Roboto",
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 360,
            color: ColorTheme().white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
