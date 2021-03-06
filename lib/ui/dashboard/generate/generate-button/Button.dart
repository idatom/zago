import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:zakat/ui/helper/ColorTheme.dart';

class ButtonMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Column(
        children: [
          Image.asset(
            "assets/icons/4.png",
            width: 42,
            height: 42,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Bayar Zakat",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          )
        ],
      ),
      onPressed: null,
    );
  }
}
