import 'package:flutter/cupertino.dart';

class ViewBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Image.asset(
          "assets/images/page5.png",
        ),
        SizedBox(
          width: 20,
        ),
        Image.asset(
          "assets/images/page6.png",
        ),
        SizedBox(
          width: 20,
        ),
        Image.asset(
          "assets/images/page2.png",
        ),
      ],
    );
  }
}
