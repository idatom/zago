import 'dart:math';

import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfffffefe),
      child: Stack(
        children: [
          Positioned.fill(
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: max(4096, 2160),
                height: 167,
                decoration: BoxDecoration(
                  color: Color(0xff0084ff),
                ),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 314,
                          height: 68,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x3f000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                              ),
                            ],
                            color: Color(0xfffffefe),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 169,
                      top: 90,
                      child: Container(
                        width: 22,
                        height: 22,
                        child: FlutterLogo(size: 22),
                      ),
                    ),
                    Positioned(
                      left: 64,
                      top: 118,
                      child: SizedBox(
                        width: 231,
                        height: 23,
                        child: Text(
                          "Mushola Al-Nur Hidayah",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xb5000000),
                            fontSize: 13,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 19,
            top: 164,
            child: Container(
              width: 314,
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Color(0x66e5e5e5),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 35,
                    top: 8,
                    child: SizedBox(
                      width: 252,
                      height: 19,
                      child: Text(
                        "Menu Utama",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xbf000000),
                          fontSize: 13,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 25,
                    top: 81,
                    child: SizedBox(
                      width: 72,
                      height: 11,
                      child: Text(
                        "Zakat Fitrah",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 125,
                    top: 81,
                    child: SizedBox(
                      width: 72,
                      height: 11,
                      child: Text(
                        "Zakat Maal",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 25,
                    top: 160,
                    child: SizedBox(
                      width: 72,
                      height: 11,
                      child: Text(
                        "Hukum Zakat",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 125,
                    top: 160,
                    child: SizedBox(
                      width: 72,
                      height: 11,
                      child: Text(
                        "Info Zakat",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 33,
                    child: Container(
                      width: 42,
                      height: 42,
                      child: FlutterLogo(size: 42),
                    ),
                  ),
                  Positioned(
                    left: 140,
                    top: 33,
                    child: Container(
                      width: 42,
                      height: 42,
                      child: FlutterLogo(size: 42),
                    ),
                  ),
                  Positioned(
                    left: 221,
                    top: 33,
                    child: Container(
                      width: 80,
                      height: 59,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 43,
                            height: 42,
                            child: FlutterLogo(size: 42),
                          ),
                          SizedBox(height: 6),
                          SizedBox(
                            width: 80,
                            height: 11,
                            child: Text(
                              "Donatur Zakat",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 112,
                    child: Container(
                      width: 42,
                      height: 42,
                      child: FlutterLogo(size: 42),
                    ),
                  ),
                  Positioned(
                    left: 140,
                    top: 112,
                    child: Container(
                      width: 42,
                      height: 42,
                      child: FlutterLogo(size: 42),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 366,
            child: Container(
              width: 360,
              height: 98,
              color: Color(0x66e5e5e5),
              padding: const EdgeInsets.only(
                left: 16,
                right: 39,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 144,
                    height: 98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: FlutterLogo(size: 98),
                  ),
                  SizedBox(width: 17),
                  Container(
                    width: 144,
                    height: 98,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: FlutterLogo(size: 98),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 338,
            top: 366,
            child: Container(
              width: 144,
              height: 98,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: FlutterLogo(size: 98),
            ),
          ),
          Positioned(
            left: 0,
            top: 503,
            child: Container(
              width: 360,
              height: 114,
              color: Color(0x66e5e5e5),
              child: Stack(
                children: [
                  Positioned(
                    left: 16,
                    top: 0,
                    child: Container(
                      width: 204,
                      height: 114,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xa50083ff),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 10,
                    child: Container(
                      width: 180,
                      height: 75,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                width: 46,
                                height: 36,
                                child: FlutterLogo(size: 36),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 69,
                            top: 511,
                            child: SizedBox(
                              width: 94,
                              height: 20,
                              child: Text(
                                "Pengumuman",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xfffffefe),
                                  fontSize: 13,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: SizedBox(
                                width: 180,
                                height: 27,
                                child: Text(
                                  "Info pengumuman donatur & penerima zakat dari masjid",
                                  style: TextStyle(
                                    color: Color(0xfffffefe),
                                    fontSize: 13,
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 241,
                    top: 8,
                    child: Container(
                      width: 46,
                      height: 38,
                      child: FlutterLogo(size: 38),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 23,
            top: 474,
            child: SizedBox(
              width: 89,
              height: 19,
              child: Text(
                "More info ?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Positioned(
            left: 231,
            top: 503,
            child: Container(
              width: 204,
              height: 113,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0x440083ff),
              ),
              padding: const EdgeInsets.only(
                left: 16,
                right: 8,
                top: 17,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 105,
                    height: 20,
                    child: Text(
                      "Daftar Penerima",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xfffffefe),
                        fontSize: 13,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 21),
                  SizedBox(
                    width: 180,
                    height: 55,
                    child: Text(
                      "Pendaftaran untuk penerima zakat dari masjid",
                      style: TextStyle(
                        color: Color(0xfffffefe),
                        fontSize: 13,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
