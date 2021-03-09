import 'package:flutter/material.dart';

class ProfilWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0xff0084ff),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 40,
                bottom: 40,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                      color: Color(0xedfffefe),
                    ),
                    padding: const EdgeInsets.only(
                      left: 23,
                      right: 23,
                      top: 37,
                      bottom: 37,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 170,
                          height: 54,
                          child: Container(
                            child: Image.asset(
                              "assets/icons/8.png",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 300,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                              ),
                            ],
                            color: Color(0xedfffefe),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            child: Center(
                              child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'E-mail',
                                  icon: Icon(Icons.email),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 300,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                              ),
                            ],
                            color: Color(0xedfffefe),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            child: Center(
                              child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: 'Password',
                                  icon: Icon(Icons.lock),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                        SizedBox(
                          width: 170,
                          height: 50,
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                            color: Colors.orange,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                            child: Text(
                              'EDIT PROFIL',
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
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
