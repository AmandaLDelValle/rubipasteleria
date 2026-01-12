import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rubi_app/widgets/product_card.dart';
import 'package:rubi_app/models/product_data.dart';

class MenuGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Product> productsList = getProducts();

    return ListView.builder(
      itemCount: productsList.length,
      itemBuilder: (context, index) {
        final product = productsList[index];
        return ProductCard(
          name: product.productName, //product_card : menu_grid.product_data
          description: product.productDesc,
        );
      },
    );
  }
}
