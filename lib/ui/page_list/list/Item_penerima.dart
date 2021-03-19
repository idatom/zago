import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LihatPenerima extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // <1> Use FutureBuilder
    return FutureBuilder<QuerySnapshot>(
      // <2> Pass `Future<QuerySnapshot>` to future
      future: FirebaseFirestore.instance.collection('penerima').get(),
      // ignore: missing_return
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final List<DocumentSnapshot> documents = snapshot.data.docs;
          return ListView(
              children: documents
                  .map(
                    (doc) => Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        children: [
                          Padding(
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
                                        Icons.home,
                                        color: Colors.blue,
                                        size: 20,
                                      ),
                                      Text(
                                        "   :  ",
                                      ),
                                      Text(doc['alamat']),
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
                                        "   :  ",
                                      ),
                                      Text(
                                        doc['total'].toString(),
                                        style: new TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        doc['golongan'],
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
                        ],
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
