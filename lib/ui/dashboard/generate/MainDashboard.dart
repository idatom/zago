import 'package:flutter/material.dart';
import 'package:zakat/ui/dashboard/generate/generate-button/Button.dart';
import 'package:zakat/ui/dashboard/generate/generate-button/Logout.dart';
import 'package:zakat/ui/dashboard/generate/generate-button/Report.dart';
import 'package:zakat/ui/dashboard/generate/generate-user/UserWidget.dart';
import 'package:zakat/ui/form/Penerima.dart';
import 'package:zakat/ui/helper/ColorTheme.dart';
import 'package:zakat/ui/form/Donatur.dart';
import 'package:zakat/ui/pilih_hitung/Pilih_hitung_dash.dart';
import 'package:zakat/ui/pilih_list/Pilih_list_dash.dart';
import 'package:zakat/ui/welcome/Welcome.dart';

// ignore: camel_case_types
// ignore: must_be_immutable
class MainDashBoardWidget extends StatefulWidget {
  String displayName;
  MainDashBoardWidget(this.displayName);
  @override
  _MainDashboardWidget createState() => _MainDashboardWidget();
}

class _MainDashboardWidget extends State<MainDashBoardWidget> {
  // String getName = getCurrentUser();

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              color: ColorTheme().blueMain,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(MediaQuery.of(context).size.width / 2),
              ),
            ),
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
                UserWidget(widget.displayName),
                SizedBox(height: 35),
                Container(
                  height: 220,
                  width: 350,
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
                          SizedBox(
                            width: 105,
                            child: ButtonMenu("assets/icons/4.png",
                                "Bayar Zakat", FormDonatur()),
                          ),
                          SizedBox(
                            width: 105,
                            child: ButtonMenu("assets/icons/14.png",
                                "Hitung Zakat", PilihDashWidget()),
                          ),
                          SizedBox(
                            width: 105,
                            child: ButtonMenu("assets/icons/1.png", "Penerima",
                                FormPenerima()),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 105,
                            child: ButtonMenu("assets/icons/2.png",
                                "Pengumuman", PilihListDash()),
                          ),
                          SizedBox(
                            width: 105,
                            child: Report(
                                "assets/icons/report.png", "Report Data"),
                          ),
                          SizedBox(
                            width: 105,
                            child: ButtonClose("assets/icons/exit.png",
                                "Logout", WelcomeWidget()),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
