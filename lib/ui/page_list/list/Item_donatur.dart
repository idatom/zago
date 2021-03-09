import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:zakat/ui/page_list/list/Trip.dart';

class LihatDonatur extends StatelessWidget {
  final List<Trip> tripsList = [
    Trip("Ribut Dwi Prasetyo", DateTime.now(), 8, "Uang", 200000.00,
        "Zakat Fitrah"),
    Trip("Anggun Sahara Anas", DateTime.now(), 2, "Beras", 2.5, "Zakat Fitrah"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ListView.builder(
          itemCount: tripsList.length,
          itemBuilder: (BuildContext context, int index) =>
              buildCard(context, index)),
    );
  }

  @override
  // ignore: override_on_non_overriding_member
  Widget buildCard(BuildContext context, int index) {
    final trip = tripsList[index];

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
                    Text(trip.name),
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
                      "${DateFormat('dd/MM/yyyy').format(trip.startDate).toString()}",
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
                      Icons.people_alt_outlined,
                      color: Colors.blue,
                      size: 20,
                    ),
                    Text(
                      "   :  ",
                    ),
                    Text(trip.anggota.toString()),
                    Text(
                      " / orang  ",
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
                      Icons.card_giftcard,
                      color: Colors.blue,
                      size: 20,
                    ),
                    Text(
                      "   :  ",
                    ),
                    Text(trip.jenis),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.payment,
                      color: Colors.blue,
                      size: 20,
                    ),
                    Text(
                      "   :   ",
                    ),
                    Text(
                      trip.budget.toString(),
                      style: new TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    Spacer(),
                    Text(
                      trip.zakatType,
                      style: new TextStyle(
                        fontSize: 14,
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
