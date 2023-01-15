// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // to add icon image
  var cross = Icon(Icons.cancel);
  var circle = Icon(Icons.circle);
  var edit = Icon(Icons.edit);
  bool isCross = true;
  late String message;
  var gameState = [];
  //initailize box with empty value
  @override
  void InitState() {
    gameState = List.filled(9, "empty");
    message = "";
    super.initState();
  }

  // to play game
  playGame(int index) {
    if (gameState[index] == "empty") {
      setState(() {
        if (isCross) {
          gameState[index] == "cross";
        } else {
          gameState[index] == "circle";
        }
      });
    }
  }

  //reset game
  resetGame() {
    setState(() {
      gameState = List.filled(9, "empty");
      message = "";
    });
  }

  // to get icon image
  Icon getIcon(String title) {
    switch (title) {
      case ("empty"):
        return edit;

      case ("cross"):
        return cross;

      case ("circle"):
        return circle;
      default:
        return Icon(Icons.add);
    }
  }

  //to check for winning
  checkWin() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic Tac Toe"),
        centerTitle: true,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: GridView.builder(
                    padding: EdgeInsets.all(10),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1.0,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: gameState.length,
                    itemBuilder: (context, i) => SizedBox(
                          width: 10,
                          height: 100,
                          child: MaterialButton(
                              onPressed: () {
                                playGame(i);
                              },
                              child: getIcon(gameState[i])),
                        ))),
          ]),
    );
  }
}
