import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.load('note$num.wav');
    player.play('note$num.wav');
  }

  Widget buildKey(int soundNum, Color tileColor) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNum);
        },
        color: tileColor,
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
            buildKey(1, Colors.purple),
            buildKey(2, Colors.blue),
            buildKey(3, Colors.green),
            buildKey(4, Colors.yellow),
            buildKey(5, Colors.orange),
            buildKey(6, Colors.teal),
            buildKey(7, Colors.pink),
          ],
        )),
      ),
    );
  }
}

