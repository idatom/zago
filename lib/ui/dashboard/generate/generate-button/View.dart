import 'package:flutter/cupertino.dart';

class ViewBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        SizedBox(
          width: 10,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(22),
          child: Image.asset(
            "assets/images/page5.png",
          ),
        ),
        SizedBox(
          width: 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(22),
          child: Image.asset(
            "assets/images/page7.png",
          ),
        ),
        SizedBox(
          width: 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(22),
          child: Image.asset(
            "assets/images/page6.png",
          ),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
