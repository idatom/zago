import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zakat/ui/helper/ColorTheme.dart';
import 'package:zakat/ui/helper/DropShadow.dart';

// class ButtonReset extends StatefulWidget {
//   @override
//   ButtonResetState createState() => ButtonResetState();
// }

class ButtonResetState extends StatelessWidget {
  final Function function;

  ButtonResetState(this.function);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [DropShadow().boxShadow],
          color: ColorTheme().redOpacity),
      alignment: Alignment.center,
      width: 170,
      height: 45,
      child: TextButton(
        onPressed: function,
        child: Text(
          "Reset",
          style: TextStyle(color: ColorTheme().white),
        ),
      ),
    );
  }
}
