import 'package:flutter/material.dart';
import 'package:zakat/ui/dashboard/generate/generate-button/Button.dart';
import 'package:zakat/ui/dashboard/generate/generate-user/UserWidget.dart';
import 'package:zakat/ui/helper/ColorTheme.dart';

class MainDashboardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
              color: ColorTheme().blueMain,
              borderRadius: BorderRadius.vertical(
                  bottom:
                      Radius.circular(MediaQuery.of(context).size.width / 2))),
          height: 380,
        ),
        SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "DASHBOARD APP",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: ColorTheme().white),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              UserWidget("Ribut"),
              SizedBox(height: 35),
              Container(
                height: 280,
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: ColorTheme().white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        offset: Offset(0, 4),
                        blurRadius: 4)
                  ],
                ),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "MENU MUZAKI",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: ColorTheme().textBlackHeader,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ButtonMenu(),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
