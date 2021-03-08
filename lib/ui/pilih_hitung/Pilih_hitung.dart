import 'package:flutter/material.dart';

class PilihWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0xff0084ff),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(
              left: 44,
              right: 45,
              top: 120,
              bottom: 110,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 268,
                  height: 224,
                  child:
                      new Image(image: AssetImage("assets/images/page10.png")),
                ),
                SizedBox(height: 7.33),
                SizedBox(
                  width: 271,
                  height: 44,
                  child: Text(
                    "Apa yang akan kamu zakatkan ?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xfffffefe),
                      fontSize: 18,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 7.33),
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: SizedBox(
                          width: 188,
                          height: 86,
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                            color: Color(0xfffffefe),
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 13,
                                  ),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    child: Image.asset(
                                      "assets/icons/16.png",
                                      width: 42,
                                      height: 42,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'Uang Tunai',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xa3000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: SizedBox(
                          width: 188,
                          height: 86,
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                            color: Color(0xfffffefe),
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 13,
                                  ),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    child: Image.asset(
                                      "assets/icons/6.png",
                                      width: 42,
                                      height: 42,
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'Beras / Kg',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xa3000000),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
