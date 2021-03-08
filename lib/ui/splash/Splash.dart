import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:zakat/ui/welcome/Welcome.dart';

class SplashWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SizedBox(
          child: Container(
            child: Center(
              child: new SplashScreen(
                loaderColor: Colors.white,
                backgroundColor: Colors.blueAccent.shade700,
                seconds: 5,
                navigateAfterSeconds: WelcomeWidget(),
                image: Image.asset("assets/images/splash.png"),
                photoSize: 80.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
