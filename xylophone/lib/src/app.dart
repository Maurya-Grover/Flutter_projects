import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class XylophoneApp extends StatelessWidget {
  final playMusic = AudioCache();

  Expanded buildKey(int soundNUmber, Color color) {
    return Expanded(
      child: FlatButton(
        onPressed: () => playMusic.play('note$soundNUmber.wav'),
        child: null,
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.redAccent[700]),
              buildKey(2, Colors.deepOrange[400]),
              buildKey(3, Colors.yellow[700]),
              buildKey(4, Colors.green[700]),
              buildKey(5, Colors.teal),
              buildKey(6, Colors.blue),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
