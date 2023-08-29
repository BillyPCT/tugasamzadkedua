import 'package:flutter/material.dart';
import 'package:flutter_application_1/generate.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Generate"),
          centerTitle: true,
        ),
        body: home(),
      ),
    );
  }
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        child: Text("go to screen"),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return feed();
          }));
        },
      )),
    );
  }
}

class feed extends StatelessWidget {
  const feed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("halaman feed"),
      ),
    );
  }
}
