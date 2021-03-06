import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zakat/ui/dashboard/generate/MainDashboard.dart';
import 'package:zakat/ui/dashboard/generate/generate-button/View.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            MainDashboardWidget(),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 300,
              child: Text(
                "More Picture :",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 170,
              child: ViewBar(),
            )
          ],
        ),
      ),
    );
  }
}
