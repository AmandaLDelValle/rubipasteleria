import 'package:flutter/material.dart';
import 'package:rubi_app/widgets/product_card.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/rubi_logo.png'),
        ),
        title: const Text('Rubi Pasteleria Menu'),
        // actions: <Widget>[Button(icon: const Icon(Icons.add_alert))],
      ),
      body:  const ProductCard(),
    );
  }
}
