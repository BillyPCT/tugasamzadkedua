import 'package:flutter/material.dart';

void main() => runApp(belajarimage());

class belajarimage extends StatelessWidget {
  const belajarimage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: 
      Scaffold(
        appBar: AppBar(title: Text("Belajar Image"
        ),
        ),
        body: Column(children:[
          Image.network("https://i2.wp.com/blog.tripcetera.com/id/wp-content/uploads/2020/10/pulau-padar.jpg",height: 100, width:50 ,),
          Image.network("https://i2.wp.com/blog.tripcetera.com/id/wp-content/uploads/2020/10/pulau-padar.jpg",height: 20, width:20 ,),
          Image.network("https://i2.wp.com/blog.tripcetera.com/id/wp-content/uploads/2020/10/pulau-padar.jpg",height: 20, width:20 ,),
          Image.network("https://i2.wp.com/blog.tripcetera.com/id/wp-content/uploads/2020/10/pulau-padar.jpg",height: 20, width:20 ,),
          Image.network("https://i2.wp.com/blog.tripcetera.com/id/wp-content/uploads/2020/10/pulau-padar.jpg",height: 20, width:20 ,),
          Container(child: Column(children: [Image.network("https://i2.wp.com/blog.tripcetera.com/id/wp-content/uploads/2020/10/pulau-padar.jpg",height: 20, width:50 ,)],),)
        ],
        
        )
        
        //Image.network(""),
        //Image.network("https://i2.wp.com/blog.tripcetera.com/id/wp-content/uploads/2020/10/pulau-padar.jpg")
        //Image.asset("assets/images/pemandangan.jpg"),
      )
    );
  }
}