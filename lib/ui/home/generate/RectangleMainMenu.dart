import 'package:flutter/material.dart';
import 'package:zakat/ui/counter-zakat/CounterMaal.dart';
import 'package:zakat/ui/helper/ColorTheme.dart';
import 'package:zakat/ui/home/generate/generate-menu-button/MenuButon.dart';
import 'package:zakat/ui/hukum/Hukum.dart';
import 'package:zakat/ui/info/Info.dart';
import 'package:zakat/ui/login/Login.dart';
import 'package:zakat/ui/pilih_hitung/Pilih_hitung.dart';

class RectangleMainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 314,
      height: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: ColorTheme().grey,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Menu Utama",
              style: TextStyle(
                  color: ColorTheme().textBlackHeader,
                  fontFamily: 'Roboto',
                  fontSize: 15,
                  fontWeight: FontWeight.w500)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            MenuButton(PilihWidget(), "assets/icons/14.png", "Zakat Fitrah"),
            MenuButton(CounterMaalState(), "assets/icons/9.png", "Zakat Maal"),
            MenuButton(LoginWidget(), "assets/icons/4.png", "Donatur Zakat"),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            SizedBox(
              width: 20,
            ),
            MenuButton(HukumZakat(), "assets/icons/10.png", "Hukum Zakat"),
            MenuButton(InfoZakat(), "assets/icons/5.png", "Info Zakat"),
            SizedBox(
              width: 20,
            )
          ]),
        ],
      ),
    );
  }
}
