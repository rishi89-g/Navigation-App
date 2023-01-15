import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice App',
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceno = 1;

  changeDice() {
    setState(() {
      diceno = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Dice Roller"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              'images/$diceno.jpg',
              height: 250,
              width: 250,
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
                child: MaterialButton(
              onPressed: changeDice,
              color: Colors.black,
              child: Text(
                "Roll",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
            const SizedBox(
              height: 100,
            ),
            const Text("#flutterWithRG")
          ],
        ));
  }
}
