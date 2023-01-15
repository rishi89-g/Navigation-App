import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "profile App",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Profile App'),
        ),
        body: Column(children: [
          SizedBox(
            height: 10,
          ),
          Center(
              child: Image.network(
            "https://pbs.twimg.com/profile_images/1104562889015414785/t1Gp6D0N_400x400.jpg",
            height: 250,
            width: 250,
          )),
          SizedBox(
            height: 10,
          ),
          Text(
            'Name:Rishiraj Giri',
            style: TextStyle(
                fontSize: 24, color: Colors.green, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Address: Kathmandu, Nepal',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Email:rishirajgiri890@gmail.com',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Text('Developed By: Rishiraj Giri'),
        ]),
      )));
}
