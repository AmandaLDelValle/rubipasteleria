import 'package:flutter/material.dart';
import 'package:rubi_app/widgets/product_card.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rubi_app/models/product_data.dart';
import 'package:rubi_app/widgets/menu_grid.dart';
import 'package:provider/provider.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7d3e4),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7d3e4),
        centerTitle: true,
        title: SizedBox(
          height: 100, // Adjust height to fit your logo nicely in the bar
          child: Image.asset('assets/rubi_logo.png'),
        ),
        leading: Padding(padding: const EdgeInsets.all(8.0)),
        // title: const Text('Rubi Pasteleria Menu'),
        // actions: <Widget>[Button(icon: const Icon(Icons.add_alert))],
      ),
      body: 
      Text("Cake details go here"),
    );

  }
}
