import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zakat/ui/helper/ColorTheme.dart';
import 'package:zakat/ui/home/generate/generate-menu-more/MoreMenuButton.dart';

class MenuMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 10,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: ColorTheme().blueMain.withOpacity(0.65),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return null;
                  }));
                },
                child: MoreMenuButton("assets/icons/15.png", "Pengumuman",
                    "Info pengumuman donatur & penerima zakat dari masjid")),
          ),
          SizedBox(
            width: 17,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: ColorTheme().blueMain.withOpacity(0.65),
                ),
                onPressed: null,
                child: MoreMenuButton("assets/icons/2.png", "Daftar Peserta",
                    "Pendaftaran untuk penerima zakat dari masjid")),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
