import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
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
                Text(
                    "App choice",
                    textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                      "assets/images/empty.png",
                      height: 95
                  ),
                ),
                Text(
                  "User choice",
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/rock.png",
                        height: 95,
                      ),
                      Image.asset(
                        "assets/images/paper.png",
                        height: 95,
                      ),
                      Image.asset(
                        "assets/images/scissor.png",
                        height: 95,
                      )
                    ],
                  ),
                ),
              ]
            )
          )
      );
  }
}