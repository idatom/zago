import 'package:flutter/material.dart';
import 'package:zakat/ui/registasi/Registasi.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ignore: must_be_immutable
class LoginWidget extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool login = true;

  Future<void> loginUser() async {
    try {
      // ignore: unused_local_variable
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: emailController.text, password: passwordController.text);
      print(userCredential.user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return "No user found for that email.";
      } else if (e.code == 'wrong-password') {
        return "Wrong password provided for that user.";
      } else {
        return "Something Went Wrong.";
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0084ff),
      appBar: AppBar(
        title: Text(
          "Login",
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(),
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
                        height: 50,
                        child: Text(
                          "LOGIN",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff0084ff),
                            fontSize: 22,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
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
                              controller: emailController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: 'E-mail',
                                hintText: 'email@example.com',
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
                              controller: passwordController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Password',
                                hintText: 'Enter Password',
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
                          color: Color(0xff0084ff),
                          onPressed: () {
                            loginUser();
                            emailController.text = '';
                            passwordController.text = '';
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Text(
                            'Masuk',
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
                          color: Colors.orange,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegistasiWidget()),
                            );
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: Text(
                            'Registasi',
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
    );
  }
}
