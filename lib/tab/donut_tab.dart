import 'package:flutter/material.dart';
import 'package:p1_donut_app_joana_chan/utils/donut_tile.dart';

// ignore: camel_case_types
class donutTab extends StatelessWidget {
  final List donutsOnSale = const [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    ["chip", "66", Colors.yellow, "lib/images/chocolate_donut.png"],
    ["Caramel", "95", Colors.orange, "lib/images/icecream_donut.png"],
    ["Mocha", "44", Colors.pink, "lib/images/strawberry_donut.png"],
    ["Mocha", "75", Colors.blue, "lib/images/grape_donut.png"],
  ];
  const donutTab({super.key});

  @override
  Widget build(BuildContext context) {
    //Delegate sirve para organizar los widgets en la cuadricula (como organizar los elementos de un convivio por ejemplo)
    return GridView.builder(
        itemCount: donutsOnSale.length,
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.65),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlavor: donutsOnSale[index][0],
            donutPrice: donutsOnSale[index][1],
            donutColor: donutsOnSale[index][2],
            imageName: donutsOnSale[index][3],
          );
        });
  }
}
