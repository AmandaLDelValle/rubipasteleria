import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final db = FirebaseFirestore.instance;

    return Card(
    margin: const EdgeInsets.all(8),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    child: Column(
      children: [
        FutureBuilder<DocumentSnapshot>(
          future: db.collection("Items").doc("p3hx4KZnJVgAis3loJNn").get(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text("Loading...");
            }
            if (snapshot.hasError || !snapshot.hasData) {
              return const Text("Error");
            }

            final data = snapshot.data!.data() as Map<String, dynamic>;
            String itemName = data['name'] ?? "Unknown Item";

            return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/strawberry_cake.png',
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          itemName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const Text("hello"),
                        const Text("hola"),
                        const SizedBox(height: 8),
                        ElevatedButton(
                          // style: Colors.pink),
                          onPressed: () {},
                          child: const Text('View Details'),
                        ),
                      ],
                    ),
                  ),
                ],
              );
          },
        ),
      ],
    ),
  );
}}