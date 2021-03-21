import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegistasiWidget extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Future<void> createUser() async {
      try {
        FirebaseFirestore firestore = FirebaseFirestore.instance;
        CollectionReference user = firestore.collection('user');
        // ignore: unused_local_variable
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: emailController.text, password: passwordController.text);
        print(userCredential.user);
        user.add({
          'name': nameController.text,
          'email': emailController.text,
          'password': passwordController.text,
        });
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Sukses"),
                content: Text("Kamu sudah berhasil Registasi"),
                actions: [
                  // ignore: deprecated_member_use
                  FlatButton(
                    child: Text("Ok"),
                    onPressed: () {
                      Navigator.of(context).pop();
                      nameController.text = '';
                      emailController.text = '';
                      passwordController.text = '';
                    },
                  )
                ],
              );
            });
      } on FirebaseAuthException catch (e) {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Error"),
                content: Text(e.message),
                actions: [
                  // ignore: deprecated_member_use
                  FlatButton(
                    child: Text("Ok"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });
      }
    }

    return Scaffold(
      backgroundColor: Color(0xff0084ff),
      appBar: AppBar(
        title: Text(
          "Registasi",
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
                          "Registasi",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff0084ff),
                            fontSize: 22,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w700,
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
                              controller: nameController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Nama',
                                hintText: 'name example',
                                icon: Icon(Icons.people),
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
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
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
                              controller: passwordController,
                              obscureText: true,
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
                        width: 140,
                        height: 50,
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          color: Colors.orange,
                          onPressed: () {
                            createUser();
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: Text(
                            'Signup',
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
