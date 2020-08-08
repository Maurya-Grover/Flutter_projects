import 'package:flutter/material.dart';
import './ui/home.dart';
void main() => runApp(Login());

class Login extends StatelessWidget {
  final appTitle = "Login";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(appTitle)),
        ),
        backgroundColor:Colors.blueGrey,
        body: CustomLoginForm(),
      )
    );
  }
}

