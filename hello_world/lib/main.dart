import 'package:flutter/material.dart';

void main() {
  runApp(HelloWorldScreen());
}

class HelloWorldScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello World"),
        ),
        body: const Center(child: Text("no more  'Hello World' curse!")),
      ),
    );
  }
}
