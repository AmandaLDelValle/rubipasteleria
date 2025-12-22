import 'package:flutter/material.dart';


class Item extends StatelessWidget {
  const Item({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      )
    );
  }
}

 