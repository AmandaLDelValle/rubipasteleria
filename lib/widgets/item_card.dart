import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



final db = FirebaseFirestore.instance;
  final docRef = db.collection("Users").doc("Gw0v2ReXHqI1NaTuLTFl");
Future<void> testFirebase() async {
  
  //print some data
final docRef = db.collection("Users").doc("Gw0v2ReXHqI1NaTuLTFl");
docRef.get().then(
  (DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    print("Firestore is connected!");
    print(data);
     },
  onError: (e) => print("Error getting document: $e"),
);
}


class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
                  children: [
                    Text("Cake stuff goes here"),
                  ]
      )
    );
  }
}

 