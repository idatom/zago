import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zakat/ui/dashboard/generate/MainDashboard.dart';
import 'package:zakat/ui/dashboard/generate/generate-button/View.dart';

// ignore: must_be_immutable
// ignore: camel_case_types
// ignore: must_be_immutable
class DashboardPage extends StatefulWidget {
  String displayName;
  DashboardPage(this.displayName);
  @override
  _DashboardPage createState() => _DashboardPage();
}

class _DashboardPage extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            MainDashBoardWidget(widget.displayName),
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
