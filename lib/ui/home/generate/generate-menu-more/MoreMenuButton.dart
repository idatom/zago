import 'package:zakat/ui/helper/ColorTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoreMenuButton extends StatefulWidget {
  final String iconName, menuName, _description;
  const MoreMenuButton(this.iconName, this.menuName, this._description);
  @override
  MoreMenuButtonState createState() => MoreMenuButtonState();
}

class MoreMenuButtonState extends State<MoreMenuButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 180,
      //decoration: BoxDecoration(),
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                widget.iconName,
                height: 38,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                widget.menuName,
                style: TextStyle(
                    fontSize: 13,
                    color: ColorTheme().white,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          Text(
            widget._description,
            textAlign: TextAlign.left,
            style: TextStyle(color: ColorTheme().white, fontSize: 13),
          )
        ],
      ),
    );
  }
}
