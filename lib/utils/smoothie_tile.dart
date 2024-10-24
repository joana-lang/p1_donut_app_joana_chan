import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
  final String smoothieFlavor;
  final String smoothiePrice;
  final dynamic
      smoothieColor; // Cambié a tipo Color, ya que el tipo debe ser explícito
  final String smoothieName;
  final VoidCallback
      onAdd; // Añadimos la función onAdd correctamente como parámetro

  const SmoothieTile({
    super.key,
    required this.smoothieFlavor,
    required this.smoothiePrice,
    required this.smoothieColor,
    required this.smoothieName,
    required this.onAdd, // Aseguramos que reciba la función
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: smoothieColor[50],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            // Price label
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: smoothieColor[100],
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(24),
                      bottomLeft: Radius.circular(24),
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text(
                    '\$$smoothiePrice',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: smoothieColor[800],
                    ),
                  ),
                ),
              ],
            ),
            // Donut image
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              child: Image.asset(smoothieName),
            ),
            // Donut flavor text
            Text(
              smoothieFlavor,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Pancake\'s',
              style: TextStyle(color: Colors.grey[600]),
            ),
            // Add button row
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Love icon (optional functionality for liking donuts)
                  Icon(Icons.favorite, color: Colors.pink[400]),
                  // Add button connected to the onAdd function
                  IconButton(
                    icon: const Icon(Icons.add_circle_outline),
                    color: Colors.grey[800],
                    onPressed:
                        onAdd, // Llama a la función onAdd cuando se presiona
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
