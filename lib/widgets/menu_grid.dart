import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rubi_app/widgets/product_card.dart';
import 'package:rubi_app/models/product_data.dart';

class MenuGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Product> productsList = getProducts();

    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10, // Spacing between columns
      mainAxisSpacing: 10, // Spacing between rows
      childAspectRatio: 0.5, // <--- Adjust this to increase height
      children: List.generate(productsList.length, (index) {
        final product = productsList[index];
        return ProductCard(
          image: product.image,
          name: product.productName,
          description: product.productDesc,
          productPrice: product.productPrice,
        );
      }),
    );

    // return ListView.builder(
    //   itemCount: productsList.length,
    //   itemBuilder: (context, index) {
    //     final product = productsList[index];
    //     return ProductCard(
    //       name: product.productName, //product_card : menu_grid.product_data
    //       description: product.productDesc,
    //     );
    //   },
    // );
  }
}

    // body: GridView.builder(
    //   crossAxisCount: 2,
    //   crossAxisSpacing: 10, // Spacing between columns
    //   mainAxisSpacing: 10, // Spacing between rows
    //   childAspectRatio: 0.5, // <--- Adjust this to increase height
    //   children: ListView.builder(
    //   itemCount: productsList.length,
    //   itemBuilder: (context, index) {
    //     final product = productsList[index];
    //     return ProductCard(
    //       name: product.productName, //product_card : menu_grid.product_data
    //       description: product.productDesc,
    //     );
    //   }),
