import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => home());
      case "feedroute":
        return MaterialPageRoute(builder: (_) => feed());
      default:
        return _errorRoute();
    }
  }


static Route <dynamic> _errorRoute(){
  return MaterialPageRoute(builder: (Context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Error"),
      ),
      body: Center(
        child: Text("Halaman tidak di temukan"),
      ),
    );
  });
}
}
