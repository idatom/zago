import 'package:flutter/material.dart';
import 'package:zakat/ui/dashboard/generate/generate-button/Button.dart';
import 'package:zakat/ui/dashboard/generate/generate-user/UserWidget.dart';
import 'package:zakat/ui/helper/ColorTheme.dart';
import 'package:zakat/ui/form/Donatur.dart';
import 'package:zakat/ui/hukum/Hukum.dart';
import 'package:zakat/ui/info/Info.dart';
import 'package:zakat/ui/pilih_list/Pilih_list.dart';

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
                height: 220,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "MENU MUZAKI",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: ColorTheme().textBlackHeader,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonMenu(
                            "assets/icons/4.png", "Bayar Zakat", FormDonatur()),
                        ButtonMenu(
                            "assets/icons/10.png", "Hukum Zakat", HukumZakat()),
                        ButtonMenu(
                            "assets/icons/5.png", "Info Zakat", InfoZakat()),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonMenu(
                            "assets/icons/2.png", "Pengumuman", PilihList()),
                        SizedBox(
                          width: 30,
                        ),
                        ButtonMenu("assets/icons/8.png", "profil", null)
                      ],
                    )
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
