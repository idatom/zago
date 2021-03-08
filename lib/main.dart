import 'package:flutter/material.dart';
import 'package:zakat/ui/splash/Splash.dart';

void main() {
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
