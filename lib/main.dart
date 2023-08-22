import 'dart:js';

import 'package:flutter/material.dart';

void main() => runApp(myapp());

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Drawer"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("Halaman Pertama"),
        ),
        drawer: _builddrawer(),
      ),
    );
  }
}

Widget _builddrawer() {
  return SizedBox(
    child: Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: Image.network(
                "data:image/png;base64,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"),
            accountName: Text(
              "Amzad",
              //style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text(
              "amzad@gmail.com",
              //style: TextStyle(color: Colors.black),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://awsimages.detik.net.id/community/media/visual/2021/06/10/melihat-lagi-indahnya-gerhana-matahari-cincin-di-langit-dunia.jpeg?w=650&q=80"),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            splashColor: Colors.lightBlue,
            leading: Icon(
              Icons.home,
              color: Colors.red,
            ),
            title: Text("Beranda"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context))) {
            return secondscreen();
            };
            }
          ),
          Divider(),
          ListTile(
            splashColor: Colors.lightGreen,
            leading: Icon(Icons.message),
            title: Text("InBox"),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            splashColor: Colors.orange,
            leading: Icon(Icons.payments),
            title: Text("History Pembayaran"),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            splashColor: Colors.yellow,
            leading: Icon(Icons.alarm),
            title: Text("alarm"),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            splashColor: Colors.cyan,
            leading: Icon(Icons.privacy_tip),
            title: Text("protect"),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            splashColor: Colors.pink,
            leading: Icon(Icons.image),
            title: Text("foto"),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            splashColor: Colors.purple,
            leading: Icon(Icons.people),
            title: Text("Kontak"),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            splashColor: Colors.deepOrange,
            leading: Icon(Icons.notifications),
            title: Text("Notifikasi"),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            splashColor: Color.fromARGB(255, 16, 9, 58),
            leading: Icon(Icons.shopping_cart),
            title: Text("Keranjang"),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            splashColor: Color.fromARGB(255, 244, 236, 84),
            leading: Icon(Icons.support_agent),
            title: Text("Customer Service"),
            onTap: () {},
          ),
        ],
      ),
    ),
  );
}
