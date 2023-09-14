import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:http/http.dart';

class amzad extends StatefulWidget {
  const amzad({super.key});

  @override
  State<amzad> createState() => _amzadState();
}

class _amzadState extends State<amzad> {
  List _get = [];

  final _lightColors = [
    Colors.amber.shade300,
    Colors.lightGreen.shade300,
    Colors.lightBlue.shade300,
    Colors.orange.shade300,
    Colors.pinkAccent.shade100,
    Colors.tealAccent.shade100,
  ];

  @override
  void iniState() {
    super.initState();
    _getData();
  }

  Future _getData() async {
    try {
      final response = await http.get(Uri.parse(""));
      if (response.statuscode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          _get = data;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hai'amzad'"),
      ),
      body: _get.length != 0
          ? MasonryGridView.count(
              crossAxisCount: 2,
              itemCount: _get.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Edit(
                                  id: _get[index]['id'],
                                )));
                  },
                  child: Card(
                    color: _lightColors[index % _lightColors.length],
                    child: Container(
                      constraints:
                          BoxConstraints(minHeight: (index % 2 + 1) * 85),
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Text(
                            '${_get[index]['date']}',
                            style: const TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                          Text(
                            '${_get[index]['title']}',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
          : const Center(
              child: Text(
                "No Data Availabe",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Add()));
        },
      ),
    );
  }
}
