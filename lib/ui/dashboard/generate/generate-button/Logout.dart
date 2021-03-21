import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonClose extends StatefulWidget {
  final Widget _widget;
  final String _icon, _name;
  const ButtonClose(this._icon, this._name, this._widget);
  @override
  ButtonMenuState createState() => ButtonMenuState();
}

class ButtonMenuState extends State<ButtonClose> {
  FirebaseAuth auth = FirebaseAuth.instance;

  signOut() async {
    await auth.signOut();
  }

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
        signOut();
        Navigator.pop(context, MaterialPageRoute(builder: (context) {
          return widget._widget;
        }));
      },
    );
  }
}
