// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import '../utils/panCake_tile.dart';

// ignore: camel_case_types
class panCakeTab extends StatelessWidget {
  final Function(double) onAdd;
  final List panCakeOnSale = const [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Frutos Rojos", "36", Colors.blue, "lib/images/p_frutos rojos.png"],
    ["Crepas", "45", Colors.red, "lib/images/p_crepas.png"],
    ["Con Miel", "84", Colors.purple, "lib/images/.png"],
    ["Galseado", "95", Colors.brown, "lib/images/p_glaseado.png"],
    ["Con Cajeta", "66", Colors.yellow, "lib/images/p_cajeta.png"],
    ["Nutella", "95", Colors.orange, "lib/images/p_chocolate.png"],
    ["Mantequilla", "44", Colors.pink, "lib/images/p_mantequilla.png"],
    ["Fresa", "75", Colors.blue, "lib/images/p_fresa.png"],
  ];
  panCakeTab({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    //Delegate sirve para organizar los widgets en la cuadricula (como organizar los elementos de un convivio por ejemplo)
    return GridView.builder(
        itemCount: panCakeOnSale.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.65),
        itemBuilder: (context, index) {
          // ignore: unused_local_variable
          double price = double.parse(panCakeOnSale[index][1]);
        });
  }
}
