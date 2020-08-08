import 'package:flutter/material.dart';
import './app.dart';

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.blue[800],
      ),
      backgroundColor: Colors.lightBlue[400],
      body: Ball(),
    );
  }
}
