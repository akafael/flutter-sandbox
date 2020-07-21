import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

/// Game Widget Description
class _GameState extends State<Game> {
  var _imageApp = AssetImage("assets/images/empty.png");
  var _imageUser = AssetImage("assets/images/empty.png");
  var _inputMessage = "Chose a Option Bellow";

  void onPlayerChose(String playerChoice) {
    List<String> _gameOptions = ["rock", "paper", "scissor"];

    // Generate App Choice
    var newNumber = new Random().nextInt(_gameOptions.length);
    var _appChoice = _gameOptions[newNumber];

    // Check If Even
    if ((playerChoice == "rock" && _appChoice == "rock") ||
        (playerChoice == "paper" && _appChoice == "paper") ||
        (playerChoice == "scissor" && _appChoice == "scissor"))
    {
       setState(() {
         this._inputMessage = "Even! =)";
         this._imageApp = AssetImage("assets/images/" + _appChoice + ".png");
         this._imageUser = AssetImage("assets/images/" + playerChoice + ".png");
       });
     }
    // Check If Player Won
     else if ((playerChoice == "rock" && _appChoice == "scissor") ||
              (playerChoice == "paper" && _appChoice == "rock") ||
              (playerChoice == "scissor" && _appChoice == "paper"))
     {
      setState(() {
        this._inputMessage = "You Won !";
        this._imageApp = AssetImage("assets/images/" + _appChoice + ".png");
        this._imageUser = AssetImage("assets/images/" + playerChoice + ".png");
      });
     }
    // Check If App Won
     else if ((playerChoice == "rock" && _appChoice == "paper") ||
              (playerChoice == "paper" && _appChoice == "scissor") ||
              (playerChoice == "scissor" && _appChoice == "rock"))
     {
      setState(() {
        this._inputMessage = "I won !";
        this._imageApp = AssetImage("assets/images/" + _appChoice + ".png");
        this._imageUser = AssetImage("assets/images/" + playerChoice + ".png");
      });
     }
    // Error State
     else
     {
       setState(() {
         this._inputMessage = "Unknown Option! Try Again ";
         this._imageApp = AssetImage("assets/images/empty.png");
         this._imageUser = AssetImage("assets/images/empty.png");
       });
     }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JokenPo"),
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "User choice",
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                            padding: EdgeInsets.all(10),
                            child: Image(
                              image: this._imageUser,
                              height: 100,
                            )
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "App choice",
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                            padding: EdgeInsets.all(10),
                            child: Image(
                              image: this._imageApp,
                              height: 100,
                            )
                        ),
                      ],
                    )
                  ],
                ),
               Text(
                  _inputMessage,
                  textAlign: TextAlign.center,
               ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () => this.onPlayerChose("rock"),
                        child: Image.asset(
                          "assets/images/rock.png",
                          height: 95,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => this.onPlayerChose("paper"),
                        child: Image.asset(
                          "assets/images/paper.png",
                          height: 95,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => this.onPlayerChose("scissor"),
                        child: Image.asset(
                          "assets/images/scissor.png",
                          height: 95,
                        ),
                      ),

                    ],
                  ),
                ),
              ]
            )
          )
      );
  }
}