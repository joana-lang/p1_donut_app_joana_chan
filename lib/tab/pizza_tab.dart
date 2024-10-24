import 'package:flutter/material.dart';
import '../utils/pizza_tile.dart';

class PizzaTab extends StatelessWidget {
  final Function(double) onAdd;

  // Lista de donas en venta
  final List pizzaOnSale = [
    ["Pizza Hawaiana", "126", Colors.blue, "lib/images/pizza_hawaina.png"],
    ["Pizza Italiana", "125", Colors.red, "lib/images/pizza_italiana.png"],
    ["Pizza Mexicana", "134", Colors.purple, "lib/images/pizza_mexicana.png"],
    ["Pizza Mixta", "155", Colors.brown, "lib/images/pizza_mixta.png"],
    ["Pizza Paesana", "166", Colors.blue, "lib/images/pizza_paesana.png"],
    ["Pizza Peperoni", "145", Colors.red, "lib/images/pizza_peperoni.png"],
    [
      "Pizza Vegetariana",
      "134",
      Colors.purple,
      "lib/images/pizza_vegetariana.png"
    ],
    ["Pizza Cheese", "120", Colors.brown, "lib/images/pizza-cheese.png"],
  ];

  PizzaTab({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pizzaOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.75,
      ),
      itemBuilder: (context, index) {
        double price =
            double.parse(pizzaOnSale[index][1]); // Convertimos el precio

        return PizzaTile(
          pizzaFlavor: pizzaOnSale[index][0],
          pizzaPrice: pizzaOnSale[index][1],
          pizzaColor: pizzaOnSale[index][2],
          pizzaName: pizzaOnSale[index][3],
          onAdd: () => onAdd(price), // Pasamos la función con el precio
        );
      },
    );
  }
}
