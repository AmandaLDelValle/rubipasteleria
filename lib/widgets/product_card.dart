import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rubi_app/models/product_data.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final int productPrice;

  const ProductCard({
    super.key,
    required this.image,
    required this.name,
    required this.description,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          // Image.asset('assets/strawberry_cake.png', fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(image, fit: BoxFit.cover),
                Text(name,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),),
                Text(description,
                style: const TextStyle(
                    fontSize: 14,
                  ),),
                Text(
                  "\$$productPrice",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD81B60),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(title: const Text('Boop!'));
                      },
                    );
                  },
                  child: const Text(
                    'View Details',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


    // final db = FirebaseFirestore.instance;
    // final cakes = myCakes();

    // for (final cake in cakes) {
    // print(
    //   '~CAKE DETAILS~ \nName: ${cake.name} \nDescription: ${cake.description} \nPrice: ${cake.price}',
    // );
// Card(
//       color: Colors.white,
//       margin: const EdgeInsets.all(8),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//       clipBehavior: Clip.antiAlias,
//       child: Column(
//         // children: [
//         // FutureBuilder<DocumentSnapshot>(
//         //   future: db.collection("Items").doc("p3hx4KZnJVgAis3loJNn").get(),
//         //   builder: (context, snapshot) {
//         //     if (snapshot.connectionState == ConnectionState.waiting) {
//         //       return const Text("Loading...");
//         //     }
//         //     if (snapshot.hasError || !snapshot.hasData) {
//         //       return const Text("Error");
//         //     }

//         //     final data = snapshot.data!.data() as Map<String, dynamic>;
//         //     String itemName = data['name'] ?? "Unknown Item";
//         // crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Image.asset('assets/strawberry_cake.png', fit: BoxFit.cover),
//           Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text(
//                   name,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16,
//                   ),
//                 ),
//                 Text(description, style: TextStyle(fontSize: 12)),
//                 const Text(
//                   "From \$45",
//                   style: const TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFFD81B60),
//                     foregroundColor: Colors.white,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   onPressed: () {
//                     showDialog(
//                       context: context,
//                       builder: (BuildContext context) {
//                         return AlertDialog(title: const Text('Boop!'));
//                       },
//                     );
//                   },
//                   child: const Text(
//                     'View Details',
//                     style: TextStyle(fontSize: 14),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//     );
//   }
// }
