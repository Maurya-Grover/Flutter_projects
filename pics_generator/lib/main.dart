import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TEST",
      home: Scaffold(
				appBar: AppBar(
					title: Text("TEST"),
					backgroundColor: Colors.blue,
				),
        body: Container(
          child: Text("Chut"),
        ),
      ),
    );
  }
}
