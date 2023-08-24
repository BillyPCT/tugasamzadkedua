import 'package:flutter/material.dart';

class menu1 extends StatelessWidget {
  const menu1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text("Ini Menu Pertama"),
        ),
      ),
    );
  }
}