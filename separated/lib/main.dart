import 'package:flutter/material.dart';

void main() => runApp(belajar());

class belajar extends StatelessWidget {
  const belajar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: belajarlistview(),
    );
  }
}

class belajarlistview extends StatelessWidget {
  final List month = [
    "januari",
    "febuari",
    "maret",
    "april",
    "mey",
    "juni",
    "juli",
    "agustus",
    "september",
    "november",
    "oktomber",
    "desember",
    "hari senin"
    "1"
  ];
  final List hari = [
    "hari senin",
    "hari selasa",
    "hari rabu",
    "hari kamis",
    "hari jumat",
    "hari sabtu",
    "hari minggu",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar ListBuilder"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                hari[index],
                style: TextStyle(fontSize: 40),
              ),
              
            ),
            
          );
        },
        itemCount: hari.length,
      ),
    );
  }
}
