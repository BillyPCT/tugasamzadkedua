import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() => runApp(belajar());

class belajar extends StatelessWidget {
  const belajar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return myhomepage();
  }
}

class myhomepage extends StatefulWidget {
  const myhomepage({super.key});

  @override
  State<myhomepage> createState() => _myhomepageState();
}

class _myhomepageState extends State<myhomepage> {
  DateTime date = DateTime(18, 03, 2009);
  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 200,
        width: 100,
        padding: const EdgeInsets.only(top: 6.0),
        margin:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pertemuan 5", style: TextStyle(color: Colors.black)),
      ),
      body: Container(
        margin: EdgeInsets.only(),
        alignment: Alignment.bottomCenter,
        child: Column(
          children: [
            CupertinoButton(
                child: Text(
                  "Pilih Program Class",
                  style: TextStyle(color: Colors.red),
                ),
                onPressed: () {
                  
                },
                )
          ],
        ),
      ),
    );
  }
}
