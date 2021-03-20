import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zakat/ui/helper/ColorTheme.dart';
import 'package:zakat/ui/helper/DropShadow.dart';

// class LabelHasil extends StatefulWidget {
//   final int result;
//   const LabelHasil(this.result);
//   @override
//   LabelHasilState createState() => LabelHasilState();
// }

class LabelHasilState extends StatelessWidget {
  final double result;
  final String _type;

  LabelHasilState(this.result, this._type);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 270,
      height: 75,
      decoration: BoxDecoration(
          boxShadow: [DropShadow().boxShadow],
          color: ColorTheme().grey,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "HASIL :",
            style: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.bold,
              color: ColorTheme().textBlackHeader,
            ),
          ),
          Text(
            _type == ' Kg'
                ? result != null
                    ? '$result' + '$_type'
                    : "-"
                : result != null
                    ? '$_type' + '$result'
                    : "-",
            style: TextStyle(
                fontFamily: "Roboto",
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black),
          )
        ],
      ),
    );
  }
}
