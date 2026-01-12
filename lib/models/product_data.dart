import 'package:flutter/material.dart';

class Product {
  String image;
  String productName;
  String productDesc;
  int productPrice;

  Product(this.image, this.productName, this.productDesc, this.productPrice);
}

List<Product> getProducts() {
  return [
    Product('assets/strawberry_cake.png', 'Strawberry', 'A strawberry cake', 45),
    Product('assets/chocolate_cake.png', 'Chocolate', 'A chocolate cake', 45),
    Product('assets/tres_leches.png','Tres Leches', 'A tres leches cake', 45),
  ];
}
  // UnmodifiableListView<Product> get products {
  //   return UnmodifiableListView(_products);
// }
