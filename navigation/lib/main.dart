import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "navigation",
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> meroWidget = <Widget>[
    Hamrowidget("welcome To Home", Color(0xff3944f7)),
    Hamrowidget("Welcome To About", Color(0xffb41618)),
    Hamrowidget("Welcome to Settings", Color(0xff467322)),
  ];
  _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF35BDD0),
        title: Text("BUTTON NAVIGATION APP"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "About"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
      body: Center(child: meroWidget.elementAt(_selectedIndex)),
    );
  }
}

class Hamrowidget extends StatelessWidget {
  final String title;
  final Color color;
  Hamrowidget(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)),
        height: 100,
        width: double.infinity,
        child: Center(
            child: Text(
          title,
          style: TextStyle(fontSize: 30, color: Colors.white),
        )),
      ),
    );
  }
}
