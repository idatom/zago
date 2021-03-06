import 'package:zakat/ui/home/generate/MenuMore.dart';
import 'package:zakat/ui/home/generate/MenuListView.dart';
import 'package:zakat/ui/home/generate/RectangleMainMenu.dart';
import 'package:zakat/ui/home/generate/ElipsUpper.dart';
import 'package:flutter/material.dart';
import 'package:zakat/ui/home/generate/RectangleBackground.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                RectangleBackground(),
                Positioned(top: 121, child: RectangleUpper())
                //)
              ],
            ),
            SizedBox(
              height: 46,
            ),
            RectangleMainMenu(),
            SizedBox(
              height: 12,
            ),
            MenuListView(),
            SizedBox(
              height: 12,
            ),
            Container(
              width: 300,
              alignment: Alignment.centerLeft,
              child: Text(
                "More Info?",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            MenuMore(),
          ],
        ),
      ),
    );
  }
}
