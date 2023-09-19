import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  final _formKey = GlobalKey<FormState>();

  var title = TextEditingController();
  var content = TextEditingController();

  @override
  void initState() {
    super.initState();
    _getData();
  }

  Future _getData() async {
    try {
      final response = await http.get(Uri.parse(""));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        setState(() {
          title = TextEditingController(text: data['title']);
          content = TextEditingController(text: data['content']);
        });
      }
    } catch (e) {
      print(e);
    }
  }

  Future _onUpdate(context) async {
    try {
      return await http.post(
        Uri.parse(""),
        body: {
          "id": widget.id,
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

  Future _onDelete(context) async {
    try {
      return await http.post(
        Uri.parse("http://192.168.25.84/latihan_amzad/note_app/delete.php"),
        body: {
          "id": widget.id,
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
        title: Text("create new note"),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20),
            child: IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Text('are you sure want to delete this?'),
                        actions: <Widget>[
                          ElevatedButton(
                              child: Icon(Icons.cancel),
                              onPressed: () => Navigator.of(context).pop()),
                          ElevatedButton(
                            child: Icon(Icons.check_circle),
                            onPressed: () => _onDelete(context),
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: Icon(Icons.delete)),
          )
        ],
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Title',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              controller: title,
              decoration: InputDecoration(
                  hintText: "type note title",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  fillColor: Colors.white,
                  filled: true),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              validator: (Value) {
                if (Value!.isEmpty) {
                  return 'note title is required';
                }
                return null;
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'content',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              controller: content,
              keyboardType: TextInputType.multiline,
              minLines: 5,
              maxLines: null,
              decoration: InputDecoration(
                hintText: 'type note content',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                fillColor: Colors.white,
                filled: true,
              ),
              style: TextStyle(
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
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                "submit",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _onUpdate(context);
                }
              },
            )
          ]),
        ),
      ),
    );
  }
}
