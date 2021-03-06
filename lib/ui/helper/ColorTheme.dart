import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class ColorTheme {
  final Color blueMain = HexColor.fromHex("0084FF");
  final Color white = HexColor.fromHex("FFFEFE");
  final Color whiteOpacity = HexColor.fromHex("FFFEFE").withOpacity(0.8);
  final Color grey = HexColor.fromHex("E5E5E5");
  final Color redOpacity = HexColor.fromHex("FF003D").withOpacity(0.8);
  final Color textBlackHeader = Colors.black.withOpacity(0.7);
}
