import 'package:flutter/cupertino.dart';
import 'package:zakat/ui/helper/ColorTheme.dart';

class UserWidget extends StatefulWidget {
  final String _name;
  const UserWidget(this._name);
  @override
  UserWidgetState createState() => UserWidgetState();
}

class UserWidgetState extends State<UserWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/icons/3.png",
          width: 40,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Welcome\n" + widget._name,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: ColorTheme().white),
        )
      ],
    );
  }
}
