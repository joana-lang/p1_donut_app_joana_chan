import 'package:flutter/material.dart';
import 'package:p1_donut_app_joana_chan/utils/MyTab.dart';

//importar 5 tabs
import '../tab/burger_tab.dart';
import '../tab/panCake_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smoothie_tab.dart';
import '../tab/donut_tab.dart';

class HomePages extends StatefulWidget {
  const HomePages({super.key});

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  List<Widget> myTabs = [
    //donut tab
    const MyTab(iconPath: 'lib/icons/donut.png'),
    //burguer tab
    const MyTab(iconPath: 'lib/icons/burger.png'),
    //smothie tab
    const MyTab(iconPath: 'lib/icons/smoothie.png'),
    //panqueue tab
    const MyTab(iconPath: 'lib/icons/pancakes.png'),
    //pizza tab
    const MyTab(iconPath: 'lib/icons/pizza.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.grey[800],
                )),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 24.0),
                child: Icon(Icons.person),
              )
            ],
          ),
          body: Column(
            children: [
              //texto "i want to eat"
              const Padding(
                padding: EdgeInsets.all(24.0),
                child: Row(
                  children: [
                    Text("i want to ", style: TextStyle(fontSize: 24.0)),
                    Text(
                      "Eat",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline), //Textstyle
                    ) //Text
                  ],
                ),
              ),
              //Tab bar
              TabBar(tabs: myTabs),

              //Tab  bar view
              Expanded(
                  child: TabBarView(children: [
                donutTab(),
                const burgerTab(),
                const smoothieTab(),
                const panCakeTab(),
                const pizzaTab()
              ]))
              //Total de carrito
            ],
          )),
    );
  }
}
