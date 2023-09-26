import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'flutter demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  Future login() async {
    var url = Uri.http("");
    var response = await http.post(url, body: {
      "username": user.text,
      "password": pass.text,
    });
    var data = jsonDecode(response.body);
    if (data.toString() == "success") {
      Fluttertoast.showToast(
        msg: 'login successful',
        backgroundColor: Colors.green,
        textColor: Colors.white,
        toastLength: Toast.LENGTH_SHORT,
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DashBoard(),
        ),
      );
    } else {
      Fluttertoast.showToast(
        backgroundColor: Colors.red,
        textColor: Colors.white,
        msg: 'username and password invalid',
        toastLength: Toast.LENGTH_SHORT,
      );
    }
  }

  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.teal.shade200, Colors.purple.shade900])),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Colors.red, Colors.yellow]),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 3,
                            color: Colors.black12)
                      ],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(200),
                          bottomRight: Radius.circular(200))),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 35, left: 65),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Let\'s',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                    color: Colors.black45,
                                    offset: Offset(1, 1),
                                    blurRadius: 5)
                              ]),
                        ),
                        Text(
                          'login',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink.shade600,
                              shadows: [
                                Shadow(
                                    color: Colors.black45,
                                    offset: Offset(1, 1),
                                    blurRadius: 5)
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
                child: TextField(
                  controller: user,
                  style: TextStyle(color: Colors.white, fontSize: 14.5),
                  decoration: InputDecoration(
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 45,
                      ),
                      prefixIcon: Icon(
                        Icons.alternate_email_outlined,
                        color: Colors.white70,
                        size: 22,
                      ),
                      border: InputBorder.none,
                      hintText: 'Enter UserName',
                      hintStyle: TextStyle(
                        color: Colors.white60,
                        fontSize: 14.5,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)
                              .copyWith(bottomRight: Radius.circular(0)),
                          borderSide: BorderSide(color: Colors.white38)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)
                              .copyWith(bottomRight: Radius.circular(0)),
                          borderSide: BorderSide(color: Colors.white))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 10),
                child: TextField(
                  controller: pass,
                  style: TextStyle(color: Colors.white, fontSize: 14.5),
                  obscureText: isPasswordVisible ? false : true,
                  decoration: InputDecoration(
                      prefixIconConstraints: BoxConstraints(minWidth: 45),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white70,
                        size: 22,
                      ),
                      suffixIconConstraints:
                          BoxConstraints(minWidth: 45, maxWidth: 46),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                        child: Icon(
                          isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.white70,
                          size: 22,
                        ),
                      ),
                      border: InputBorder.none,
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(
                        color: Colors.white60,
                        fontSize: 14.5,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100)
                              .copyWith(bottomRight: Radius.circular(100))
                              .copyWith(bottomRight: Radius.circular(0)),
                          borderSide: BorderSide(color: Colors.white38)),
                      focusedBorder: OutlineInputBorder()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
