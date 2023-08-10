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
          
          title: Text("Belajar List view"
          
          ),
          
          ),
          body: ListView(
            children: [
              Column(
                children: [
                  Container(
                
                child: 
                Image.network("https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2021/10/14/4151558457.jpg"),
              ),
              SizedBox(height: 20,),
              Container(child: Image.network("https://media.suara.com/pictures/970x544/2021/02/06/66272-poster-attack-on-titan-final-season.jpg"),
              ),
              SizedBox(height: 20,width: 20,),
              Container(child: Image.network(""),
              ),
              SizedBox(height: 20,width: 20,),
              Container(
              child: Image.network("https://assets.ayobandung.com/crop/0x77:749x541/750x500/webp/photo/2022/10/10/1171399530.jpg"),
              
              ),

                ],
              )

            ],
          ),
      ),
      
      );
  }
}
