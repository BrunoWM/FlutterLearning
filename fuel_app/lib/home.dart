import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _controllerAlcohol = TextEditingController();
  TextEditingController _controllerGasoline = TextEditingController();
  String _result = "";

  void _calculate() {
    double alcohol_price = double.parse(_controllerAlcohol.text);
    double gasoline_price = double.parse(_controllerGasoline.text);

    if (alcohol_price == null || gasoline_price == null) {
      setState(() {
        _result = "Digite um valor maior que 0 e utiliz '.'";
      });
    } else {
      if ((alcohol_price / gasoline_price) >= 0.7) {
        setState(() {
          _result = "It's better to use gasoline";
        });
      } else {
        setState(() {
          _result = "It's better to use alcohol";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fluel App"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Image.asset("images/logo.png"),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text("Knows wich fuel is better for your car:"),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: "Alcohol price. ex: 4.19"),
                  controller: _controllerAlcohol,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: "Gasoline price. ex: 5.99"),
                  controller: _controllerGasoline,
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                        onPressed: _calculate, child: Text("Calculate"))),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(_result),
                )
              ],
            ),
          )),
    );
  }
}
