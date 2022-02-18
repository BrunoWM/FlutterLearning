import 'dart:math';

import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  var _game_image = AssetImage("images/padrao.png");

  void _user_option(String userOp) {
    var options = ["pedra", "papel", "tesoura"];
    var random_num = Random().nextInt(3);
    var app_choice = options[random_num];

    switch (app_choice) {
      case "pedra":
        setState(() {
          _game_image = AssetImage("images/pedra.png");
        });
        break;
      case "papel":
        setState(() {
          _game_image = AssetImage("images/papel.png");
        });
        break;
      case "tesoura":
        setState(() {
          _game_image = AssetImage("images/tesoura.png");
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JoKenPo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 16, bottom: 32),
            child: Text(
              "App choice:",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Image(image: _game_image),
          const Padding(
            padding: EdgeInsets.only(top: 16, bottom: 32),
            child: Text(
              "Chose one:",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => _user_option("pedra"),
                child: Image.asset("images/pedra.png", height: 90),
              ),
              GestureDetector(
                onTap: () => _user_option("papel"),
                child: Image.asset("images/papel.png", height: 90),
              ),
              GestureDetector(
                onTap: () => _user_option("tesoura"),
                child: Image.asset("images/tesoura.png", height: 90),
              ),
            ],
          )
        ],
      ),
    );
  }
}
