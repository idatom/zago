import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:zakat/ui/helper/ColorTheme.dart';

class ButtonMenu extends StatefulWidget {
  final Widget _widget;
  final String _icon, _name;
  const ButtonMenu(this._icon, this._name, this._widget);
  @override
  ButtonMenuState createState() => ButtonMenuState();
}

class ButtonMenuState extends State<ButtonMenu> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Column(
        children: [
          Image.asset(
            widget._icon,
            width: 42,
            height: 42,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            widget._name,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          )
        ],
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return widget._widget;
        }));
      },
    );
  }
}
