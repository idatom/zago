import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:zakat/ui/page_list/list/Trip_close.dart';

class LihatPenerima extends StatelessWidget {
  final List<Kost> closeList = [
    Kost("Ribut Dwi Prasetyo", DateTime.now(), "Jakarta", 200.00, "Uang"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          itemCount: closeList.length,
          itemBuilder: (BuildContext context, int index) =>
              buildCard(context, index)),
    );
  }

  @override
  // ignore: override_on_non_overriding_member
  Widget buildCard(BuildContext context, int index) {
    final kost = closeList[index];

    return new Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14), // if you need this
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.people,
                      color: Colors.blue,
                      size: 20,
                    ),
                    Text(
                      "   :  ",
                    ),
                    Text(kost.name),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.date_range,
                      color: Colors.blue,
                      size: 20,
                    ),
                    Text(
                      "   :  ",
                    ),
                    Text(
                      "${DateFormat('dd/MM/yyyy').format(kost.startDate).toString()}",
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      color: Colors.blue,
                      size: 20,
                    ),
                    Text(
                      "   :  ",
                    ),
                    Text(kost.alamat),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.mail,
                      color: Colors.blue,
                      size: 20,
                    ),
                    Text(
                      "   :   ",
                    ),
                    Text(
                      kost.budget.toString(),
                      style: new TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    Spacer(),
                    Text(
                      kost.jenis,
                      style: new TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
