import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zakat/ui/helper/ColorTheme.dart';
import 'package:zakat/ui/helper/DropShadow.dart';

// class ButtonHitung extends StatefulWidget {
//   @override
//   ButtonHitungState createState() => ButtonHitungState();
// }

class ButtonHitungState extends StatelessWidget {
  final Function function;

  ButtonHitungState(this.function);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: function,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [DropShadow().boxShadow],
            color: ColorTheme().blueMain),
        alignment: Alignment.center,
        width: 170,
        height: 45,
        child: Text(
          "Hitung",
          style: TextStyle(color: ColorTheme().white),
        ),
      ),
    );
  }
}
