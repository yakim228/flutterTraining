import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State {
  String _sentence;
  bool _changed;

  @override
  void initState() {
    _sentence = "Helloe";
    _changed = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello",
      home: Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(child: Text(_sentence, style: TextStyle())),
          SizedBox(
            height: 20.0,
          ),
          RaisedButton(
            color: _changed ? Colors.pink : Colors.yellow,
            child: Text(
              "Change",
              style: TextStyle(
                  color: _changed ? Colors.yellow : Colors.pink,
                  fontSize: 30.5),
            ),
            onPressed: () {
              setState(() {
                _changed ? _changed = false : _changed = true;
                _sentence == "Helloe"
                    ? _sentence = "Toto"
                    : _sentence = "Helloe";
              });
            },
          )
        ]),
      ),
    );
  }
}
