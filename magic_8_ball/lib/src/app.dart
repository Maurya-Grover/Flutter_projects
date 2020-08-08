import 'package:flutter/material.dart';
import 'dart:math';

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int _ballValue = 1;

//  void generateAnswer() {
//    setState(() {
//      _ballValue = Random().nextInt(5) + 1;
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset('images/ball$_ballValue.png'),
        onPressed: () {
          setState(() {
            _ballValue = Random().nextInt(5) + 1;
          });
        },
        splashColor: Colors.white24,
      ),
    );
  }
}
