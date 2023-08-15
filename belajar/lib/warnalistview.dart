import 'package:flutter/material.dart';

class warna extends StatelessWidget {
  final List<Color> warna1 = [
    Colors.black,
    Colors.grey,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.brown,
  ];
  final List<Widget> nomor = List.generate(50, (index) => Text("${index + 1}",style: TextStyle(fontSize: 30),));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Belajar"),
          centerTitle: true,

        ),
        body: ListView(
          children: [
            nomor 
          ],
        ),
      ),
    );
  }
}
