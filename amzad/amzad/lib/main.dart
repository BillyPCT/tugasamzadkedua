import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MobileLegend());
  }
}

class MobileLegend extends StatelessWidget {
  const MobileLegend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello World")),
      body: Row(children: [
        Container(
          
          color: Color.fromARGB(255, 18, 57, 198),
          child: FlutterLogo(size: 200,),

          ),
          SizedBox(width: 50,),
          Container(
            color: Color.fromARGB(255, 246, 255, 0),
            child: FlutterLogo(size: 200,),
          ),
          SizedBox(width: 50,),
          Container(
            
            color: const Color.fromARGB(255, 255, 0, 0),
            child: FlutterLogo(size: 200,),
          ),
          SizedBox(width: 50,),
          Container(
            child: FlutterLogo(size: 200,),
          ),
          SizedBox(width: 50,),
          Container(
            child: FlutterLogo(size: 200,),
          )
          
      ]
      ),
      );
  }
}
