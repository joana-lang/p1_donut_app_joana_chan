// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:p1_donut_app_joana_chan/utils/donut_tile.dart';
import '../utils/panCake_tile.dart';
import '../utils/pancake_tile.dart';

class PancakeTab extends StatelessWidget {
  final Function(double) onAdd;

  // Lista de donas en venta
  final List pancakeOnSale = [
    ["Pancake Cajeta", "50", Colors.blue, "lib/images/p_cajeta.png"],
    ["Pancake Chocolate", "45", Colors.red, "lib/images/p_chocolate.png"],
    ["Pancake Crepas", "44", Colors.purple, "lib/images/p_crepas.png"],
    ["Pancake Fresa", "55", Colors.brown, "lib/images/p_fresa.png"],
    [
      "Pancake Frutos Rojos",
      "46",
      Colors.green,
      "lib/images/p_frutos_rojos.png"
    ],
    ["Pancake Glaseado", "35", Colors.yellow, "lib/images/p_glaseado.png"],
    [
      "Pancake Mantequilla",
      "44",
      Colors.purple,
      "lib/images/p_mantequilla.png"
    ],
    ["Pancake Miel", "35", Colors.orange, "lib/images/p_miel.png"],
  ];

  PancakeTab({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pancakeOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.75,
      ),
      itemBuilder: (context, index) {
        double price = double.parse(pancakeOnSale[index][1]);

        return PancakeTile(
          pancakeFlavor: pancakeOnSale[index][0],
          pancakePrice: pancakeOnSale[index][1],
          pancakeColor: pancakeOnSale[index][2],
          pancakeName: pancakeOnSale[index][3],
          onAdd: () => onAdd(price),
        );
      },
    );
  }
}
