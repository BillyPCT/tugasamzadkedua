import 'package:bottombar/navigation/layout_navbar.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LayoutNavigationBar(),
      ),
    );
  }
}