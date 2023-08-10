import 'package:flutter/material.dart';

class secondscreen extends StatelessWidget {
  const secondscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("secondscreen"),
      ),
      body: Center(
        child: OutlinedButton(
          child: Text("kembali"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
