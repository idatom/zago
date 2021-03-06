import 'package:flutter/material.dart';
import 'package:zakat/ui/home/Home.dart';
import 'package:zakat/ui/login/Login.dart';

class WelcomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Material(
      color: Color(0xff0084ff),
      child: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 50,
                right: 52,
                top: 87,
                bottom: 54,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 257.79,
                    height: 346,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 19.96,
                          child: SizedBox(
                            width: 257.79,
                            height: 176.40,
                            child: new Image(
                                image:
                                    AssetImage("assets/images/Ellipse1.png")),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 173,
                              height: 346,
                              child: Image(
                                  image:
                                      AssetImage("assets/images/welcome.png")),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.50),
                  Text(
                    "Apa yang akan kamu lakukan ?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xedfffefe),
                      fontSize: 16,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 12.50),
                  SizedBox(
                    width: 200,
                    height: 45,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      color: Color(0xedfffefe),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeWidget()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Text(
                        'Get to welcome !',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w700,
                          color: Color(0xffff4757),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12.50),
                  Text(
                    "Or",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xedfffefe),
                      fontSize: 15,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 12.50),
                  SizedBox(
                    width: 160,
                    height: 45,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      color: Color(0xedfffefe),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginWidget()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w700,
                          color: Color(0xff2ed573),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
