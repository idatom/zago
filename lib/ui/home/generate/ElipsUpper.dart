import 'package:flutter/material.dart';
import 'package:zakat/ui/helper/ColorTheme.dart';

class RectangleUpper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      width: 314,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: ColorTheme().white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.25),
              offset: Offset(0, 4),
              blurRadius: 4)
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "assets/icons/7.png",
            fit: BoxFit.cover,
            width: 22,
          ),
          Text(
            "Mushola Al-Nur Hidayah",
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 13,
                color: ColorTheme().textBlackHeader,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
