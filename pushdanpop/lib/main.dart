import 'package:flutter/material.dart';

import 'firstscreen.dart';

void main() => runApp(homepage());

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: firstscreen(
));
  }
}
