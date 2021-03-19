import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LihatDonatur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // <1> Use FutureBuilder
    return FutureBuilder<QuerySnapshot>(
      // <2> Pass `Future<QuerySnapshot>` to future
      future: FirebaseFirestore.instance.collection('donatur').get(),
      // ignore: missing_return
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final List<DocumentSnapshot> documents = snapshot.data.docs;
          return ListView(
              children: documents
                  .map(
                    (doc) => Card(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(14), // if you need this
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
                                  Text(doc['name']),
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
                                  Text(doc['tanggal']),
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
                                  Text(doc['keluarga'].toString()),
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
                                  Text(doc['zakat']),
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
                                    doc['total'].toString(),
                                    style: new TextStyle(
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    doc['bentuk'],
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
                  )
                  .toList());
        } else {
          return Center(
            child: Image.asset(
              "assets/icons/loading.gif",
              width: 230,
              height: 200,
            ),
          );
        }
      },
    );
  }
}
