import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rubi Pasteleria Menu'),
      ),
      body: const Center(
        child: Text('Cakes cakes cakes'),
      ),
    );
  }
}