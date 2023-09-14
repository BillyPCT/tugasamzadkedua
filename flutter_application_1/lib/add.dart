import 'dart:convert';
import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  final _formkey = GlobalKey<FormState>();

  var title = TextEditingController();
  var content = TextEditingController();

  Future _onSubmit() async {
    try {
      return await http.post(
        Uri.parse("http://192.168.25.84/laihan_amzad/note_app/create.php"),
        Body: {
          "title": title.text,
          "content": content.text,
        },
      ).then((value) {
        var data = jsonDecode(value.body);
        print(data["message"]);

        Navigator.of(context)
            .pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create New Note"),
      ),
      body: Form(
        key: _formkey,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'title',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: title,
                decoration: InputDecoration(
                    hintText: "Type Note Title",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    fillColor: Colors.white,
                    filled: true),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Note Title is Required';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              const Text(
                'content',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: content,
                keyboardType: TextInputType.multiline,
                minLines: 5,
                maxLines: null,
                decoration: InputDecoration(
                  hintStyle: 'Type Note Content',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'note content is required!';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  "submit",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    _onSubmit();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
