import 'package:flutter/material.dart';
import 'package:login1/home_screen.dart';
import 'package:login1/main.dart';

TextStyle mystyle = TextStyle(
  fontSize: 25,
);

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var username;
  var password;
  @override
  Widget build(BuildContext context) {
    final myloginbutton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue,
      child: MaterialButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => HomeScreen(username)));
        },
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        child: Text(
          "Login",
          style: mystyle,
        ),
      ),
    );

    final passwordfield = TextField(
      onChanged: (val) {
        setState(() {
          password = val;
        });
      },
      obscureText: true,
      style: mystyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final usernamefield = TextField(
      onChanged: (val) {
        setState(() {
          username = val;
        });
      },
      style: mystyle,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: "Username",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    return Scaffold(
        body: Center(
            child: Container(
                color: Colors.white,
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.supervised_user_circle,
                          size: 100,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        usernamefield,
                        const SizedBox(
                          height: 20,
                        ),
                        passwordfield,
                        const SizedBox(
                          height: 50,
                        ),
                        myloginbutton,
                      ],
                    )))));
  }
}
