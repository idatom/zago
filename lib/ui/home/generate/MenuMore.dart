import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zakat/ui/helper/ColorTheme.dart';
import 'package:zakat/ui/home/generate/generate-menu-more/MoreMenuButton.dart';
import 'package:zakat/ui/page_list/Card_pengeluaran.dart';
import 'package:zakat/ui/pilih_list/Pilih_list.dart';

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
                    return PilihList();
                  }));
                },
                child: MoreMenuButton("assets/icons/15.png", "Pengumuman",
                    "Info daftar pengumuman muzaki & penerima zakat")),
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
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return CardPengeluaran();
                  }));
                },
                child: MoreMenuButton("assets/icons/2.png", "Pengeluaran",
                    "Informasi pengeluaran keuangan zakat")),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
