import 'package:flutter/material.dart';

void main() => runApp(belajar());

class belajar extends StatelessWidget {
  const belajar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("ini adalah view"),
          
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text("ini adalah nomor 1"),
              subtitle: Text("ini adalah judul nomor 1"),
              leading: CircleAvatar(
                backgroundColor: Colors.amberAccent,

              ),
              trailing: Text("4:30")
            ),
            Divider(color: Colors.black,),

            ListTile(
              title: Text("ini adalah nomor 2"),
              subtitle: Text("ini adalah judul nomor 2"),
              leading: CircleAvatar(
                backgroundColor: Colors.red,
                
              ),
              trailing: Text("4:36"),
            ),
            Divider(color: Colors.black,),

            ListTile(
              title: Text("ini adalah nomor 3"),
              subtitle: Text("ini judul nomor 3"),
              leading: CircleAvatar(
                backgroundColor: Colors.yellow,
              ),
              trailing: Text("4:38"),
            ),
            Divider(color: Colors.black,),

            ListTile(
              title: Text("ini nomor 4"),
              subtitle: Text("ini judul nomor 4"),
              leading: CircleAvatar(backgroundColor: Colors.red,),
              trailing: Text("4:41"),
            ),
            Divider(color: Colors.black,),

            ListTile(
              title: Text("ini nomor 5"),
              subtitle: Text("ini judul nomor 5"),
              leading: CircleAvatar(backgroundColor: Colors.blue,),
              trailing: Text("4:43"),
            ),
            Divider(color: Colors.black,),

            ListTile(
              title: Text("ini nomor 6"),
              subtitle: Text("ini judul nomor 6"),
              leading: CircleAvatar(backgroundColor: Colors.pink,),
              trailing: Text("4:43"),
            ),
            Divider(color: Colors.black,),

            ListTile(
              title: Text("ini adalah nomor 7"),
              subtitle: Text("ini adalah judul nomor 7"),
              leading: CircleAvatar(
                backgroundColor: Colors.lightBlue,
                
              ),
              trailing: Text("4:44"),
            ),
            Divider(color: Colors.black,),

            ListTile(
              title: Text("ini adalah nomor 8"),
              subtitle: Text("ini judul nomor 8"),
              leading: CircleAvatar(
                backgroundColor: Colors.lightGreen,
              ),
              trailing: Text("4:45"),
            ),
            Divider(color: Colors.black,),

            ListTile(
              title: Text("ini nomor 9"),
              subtitle: Text("ini judul nomor 9"),
              leading: CircleAvatar(backgroundColor: Colors.orange,),
              trailing: Text("4:46"),
            ),
            Divider(color: Colors.black,),

            ListTile(
              title: Text("ini nomor 10"),
              subtitle: Text("ini judul nomor 10"),
              leading: CircleAvatar(backgroundColor: Colors.grey,),
              trailing: Text("4:47"),
            ),
            Divider(color: Colors.black,),

            ListTile(
              title: Text("ini nomor 11"),
              subtitle: Text("ini judul nomor 11"),
              leading: CircleAvatar(backgroundColor: Colors.cyan,),
              trailing: Text("4:43"),
            ),
            Divider(color: Colors.black,),
            
          ],
        ),
      ),
    );
  }
}