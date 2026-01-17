import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  String image;
  String productName;
  String productDesc;
  int productPrice;

  Product(this.image, this.productName, this.productDesc, this.productPrice);
}

  Future<List<Product>> getProducts() async {
    final response = await FirebaseFirestore.instance.collection("Items").get();

    return response.docs.map((doc) {
      final data = doc.data() as Map<String, dynamic>;

      return Product(
        'assets/strawberry_cake.png',
        data['name'] ?? 'Unnamed Item',
        data['description'] ?? 'No description',
        data['price'] ?? 0,
      );
    }).toList();
  }

  



// List<Product> getProducts() {
//   return [
  
//         Product('assets/strawberry_cake.png', 'Strawberry', 'A strawberry cake', 45),

//     Product('assets/chocolate_cake.png', 'Chocolate', 'A chocolate cake', 45),
//     Product('assets/tres_leches.png','Tres Leches', 'A tres leches cake', 45),
//   ];
// }
  // UnmodifiableListView<Product> get products {
  //   return UnmodifiableListView(_products);
// }
