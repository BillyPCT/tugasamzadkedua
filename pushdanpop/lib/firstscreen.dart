import 'package:flutter/material.dart';

import 'secondscreen.dart';

class firstscreen extends StatelessWidget {
  const firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("first screen")),
      body: Center(
          child: ElevatedButton(
        child: Text("go to Second Screen"),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return secondscreen();
          }));
        },
      )),
    );
  }
}
