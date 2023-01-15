import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Score App",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({super.key});

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int counter = 0;
  void inc() {
    setState(() {
      counter = counter + 1;
    });
  }

  void dec() {
    setState(() {
      counter = counter - 1;
    });
  }

  void resetNumber() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Score Changer'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore_outlined),
        onPressed: resetNumber,
      ),
      body: Column(children: [
        const SizedBox(
          height: 25,
        ),
        const Center(
          child: Text(
            'Score',
            style: TextStyle(
                color: Colors.green, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            counter.toString(),
            style: const TextStyle(
                color: Colors.green, fontSize: 85, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          RaisedButton(
              color: Colors.blue,
              onPressed: inc,
              child: Text(
                "Increase",
              )),
          SizedBox(
            width: 20,
          ),
          RaisedButton(
            color: Colors.red,
            onPressed: dec,
            child: Text(
              "Decrease",
            ),
          ),
        ]),
        const SizedBox(
          height: 50,
        ),
      ]),
    );
  }
}
