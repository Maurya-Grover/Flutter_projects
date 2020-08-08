import 'package:finale/loading_page.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    LoadingScreen.tag: (context) => LoadingScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digisol',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: routes,
    );
  }
}
