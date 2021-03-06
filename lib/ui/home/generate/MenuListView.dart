import 'package:flutter/cupertino.dart';

class MenuListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset("assets/images/page4.png"),
          ),
          SizedBox(width: 17),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset("assets/images/page5.png"),
          ),
          SizedBox(width: 17),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset("assets/images/page6.png"),
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
