import 'package:bottombar/menu/menu1.dart';
import 'package:flutter/material.dart';

import '../menu/menu2.dart';
import '../menu/menu3.dart';

// class LayoutNavigationBar extends StatefulWidget {
//   @override
//   _LayoutNavigationBarState createState() => 
//   _LayoutNavigationBarState();

// }
//   @override
// class LayoutNavigationBarState extends State <LayoutNavigationBar>{

// }

class LayoutNavigationBar extends StatefulWidget {
  const LayoutNavigationBar({super.key});

  @override
  State<LayoutNavigationBar> createState() => _LayoutNavigationBarState();
}

class _LayoutNavigationBarState extends State<LayoutNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children =[
    menu1(),
    menu2(),
    menu3(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(currentIndex: _currentIndex,onTap: null,
        items: [
          BottomNavigationBarItem(icon: new Icon(Icons.shopping_cart),label: "Keranjang"),
          BottomNavigationBarItem(icon: new Icon(Icons.message),label: "Pesan"),
          BottomNavigationBarItem(icon: new Icon(Icons.sell),label: "Jual"),
        ],
        ),
      ),
    );
  }
}