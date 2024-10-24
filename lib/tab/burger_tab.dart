import 'package:flutter/material.dart';
import '../utils/burger_tile.dart';

class BurgerTab extends StatelessWidget {
  final Function(double) onAdd;

  // Lista de donas en venta
  final List burgerOnSale = [
    ["Burguer Cheese", "50", Colors.blue, "lib/images/burger_cheese.png"],
    ["Burger Chica", "45", Colors.red, "lib/images/burger_chica.png"],
    ["Burger Chicken", "44", Colors.purple, "lib/images/burger_chicken.png"],
    ["Burger Grande", "55", Colors.brown, "lib/images/burger_grande.png"],
    ["Burger con Papas", "46", Colors.green, "lib/images/burger_papas.png"],
    ["Burger Triple", "75", Colors.yellow, "lib/images/burger_triple.png"],
    ["Burger Vegana", "44", Colors.purple, "lib/images/burger_vegana.png"],
    [
      "Burger Vegetariana",
      "65",
      Colors.orange,
      "lib/images/burger_vegetariana.png"
    ],
  ];

  BurgerTab({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: burgerOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.75,
      ),
      itemBuilder: (context, index) {
        double price = double.parse(burgerOnSale[index][1]);

        return BurgerTile(
          burgerFlavor: burgerOnSale[index][0],
          burgerPrice: burgerOnSale[index][1],
          burgerColor: burgerOnSale[index][2],
          burgerName: burgerOnSale[index][3],
          onAdd: () => onAdd(price),
        );
      },
    );
  }
}
