import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropShadow {
  final BoxShadow boxShadow = new BoxShadow(
      color: Colors.black.withOpacity(0.25),
      offset: Offset(0, 4),
      blurRadius: 4);
}
