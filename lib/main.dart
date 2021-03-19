import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zakat/ui/splash/Splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(zakat());
}

// ignore: camel_case_types
class zakat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Roboto"),
      initialRoute: '/Splash',
      routes: {
        '/Splash': (context) => SplashWidget(),
      },
    );
  }
}
