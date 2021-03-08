import 'package:flutter/material.dart';

class ButtonMuzaki extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 140,
          height: 45,
          // ignore: deprecated_member_use
          child: RaisedButton(
            color: Colors.blueAccent,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0),
            ),
            child: Text(
              'Simpan',
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w700,
                color: Color(0xedfffefe),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          width: 140,
          height: 38,
          // ignore: deprecated_member_use
          child: RaisedButton(
            color: Colors.redAccent,
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14.0),
            ),
            child: Text(
              'Reset',
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w700,
                color: Color(0xedfffefe),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
