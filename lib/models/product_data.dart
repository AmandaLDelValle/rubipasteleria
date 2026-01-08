import 'package:flutter/material.dart';

class Product {
  String productName;
  String productDesc;
  int productPrice;

  Product(this.productName, this.productDesc, this.productPrice);
}

List<Product> getProducts() {
  return [
    Product('Strawberry', 'A strawberry cake', 45),
    Product('Chocolate', 'A chocolate cake', 45),
    Product('Tres Leches', 'A tres leches cake', 45),
  ];
}
  // UnmodifiableListView<Product> get products {
  //   return UnmodifiableListView(_products);
// }
