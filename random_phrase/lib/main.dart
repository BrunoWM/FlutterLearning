import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _phrases = [
    "phrase 0",
    "phrase 1",
    "phrase 2",
    "phrase 3",
    "phrase 4",
  ];

  String _initialPhrase = "your phrase will show up here";

  void _generatePhrase() {
    var randomNum = Random().nextInt(_phrases.length);
    setState(() {
      _initialPhrase = _phrases[randomNum];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Phrases"),
        backgroundColor: const Color.fromARGB(255, 255, 202, 40),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(children: <Widget>[
          Image.asset("images/radom_logo.png"),
          Text(_initialPhrase),
          TextButton(
              onPressed: _generatePhrase, child: const Text("nova frase"))
        ]),
      ),
    );
  }
}
