import 'package:flutter/material.dart';
import '../utils/smoothie_tile.dart';

class SmoothieTab extends StatelessWidget {
  final Function(double) onAdd;

  // Lista de donas en venta
  final List smoothieOnSale = [
    ["Smoothie Chocolate", "46", Colors.blue, "lib/images/s_chocolate.png"],
    ["Smoothie Cítricos", "35", Colors.red, "lib/images/s_citricos.png"],
    ["Smoothie Fresa", "44", Colors.purple, "lib/images/s_f.png"],
    [
      "Smoothie Frutos Rojos",
      "55",
      Colors.brown,
      "lib/images/s_frutos_rojos.png"
    ],
    ["Smoothie Mango", "56", Colors.blue, "lib/images/s_mango.png"],
    ["Smoothie Mora", "35", Colors.red, "lib/images/s_mora.png"],
    ["Smoothie Triple", "34", Colors.purple, "lib/images/s_triple.png"],
    ["Smoothie Verde", "30", Colors.brown, "lib/images/s_verde.png"],
  ];

  SmoothieTab({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: smoothieOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.75,
      ),
      itemBuilder: (context, index) {
        double price =
            double.parse(smoothieOnSale[index][1]); // Convertimos el precio

        return SmoothieTile(
          smoothieFlavor: smoothieOnSale[index][0],
          smoothiePrice: smoothieOnSale[index][1],
          smoothieColor: smoothieOnSale[index][2],
          smoothieName: smoothieOnSale[index][3],
          onAdd: () => onAdd(price), // Pasamos la función con el precio
        );
      },
    );
  }
}
