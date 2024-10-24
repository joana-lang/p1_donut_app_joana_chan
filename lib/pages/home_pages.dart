import 'package:flutter/material.dart';
import '../tab/donut_tab.dart'; // Importa el archivo DonutTab
import '../tab/burger_tab.dart';
// ignore: unused_import
import '../tab/panCake_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smoothie_tab.dart';
import '../utils/MyTab.dart'; // Asegúrate de que el import es correcto

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Variable para contar los items del carrito
  int totalItems = 0;
  double totalPrice = 0;

  // Lista de tabs
  List<Widget> myTabs = [
    const MyTab(iconPath: "lib/icons/donut.png", label: "Donuts"),
    const MyTab(iconPath: "lib/icons/burger.png", label: "Burger"),
    const MyTab(iconPath: "lib/icons/smoothie.png", label: "Smoothie"),
    const MyTab(iconPath: "lib/icons/pancakes.png", label: "Pancakes"),
    const MyTab(iconPath: "lib/icons/pizza.png", label: "Pizza"),
  ];

  // Función para añadir un ítem al carrito
  void addItemToCart(double itemPrice) {
    setState(() {
      totalItems++; // Incrementa el número de items
      totalPrice += itemPrice; // Suma el precio del item al total
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Icon(
              Icons.menu,
              color: Colors.grey[800],
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 24),
              child: Icon(Icons.person),
            ),
          ],
        ),
        body: Column(
          children: [
            // Texto "I want to eat"
            const Padding(
              padding: EdgeInsets.all(24),
              child: Row(
                children: [
                  Text("I want to ", style: TextStyle(fontSize: 24)),
                  Text("Eat",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline)),
                ],
              ),
            ),
            // TabBar
            TabBar(tabs: myTabs),

            // TabBarView con contenido
            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(
                      onAdd: addItemToCart), // Pasamos la función addItemToCart
                  BurgerTab(onAdd: addItemToCart),
                  SmoothieTab(onAdd: addItemToCart),
                  PancakeTab(
                    onAdd: addItemToCart,
                  ),
                  PizzaTab(onAdd: addItemToCart),
                ],
              ),
            ),
          ],
        ),
        // Barra inferior del carrito
        bottomNavigationBar: BottomAppBar(
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 11.0, vertical: 10.0),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Parte izquierda de la barra inferior
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$totalItems Items | \$${totalPrice.toStringAsFixed(2)}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 10),
                    ),
                    const Text(
                      'Delivery Charges Included',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                // Botón de "View Cart"
                ElevatedButton(
                  onPressed: () {
                    // Aquí iría la lógica para navegar al carrito
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink, // Color del botón
                  ),
                  child: const Text('View Cart'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
