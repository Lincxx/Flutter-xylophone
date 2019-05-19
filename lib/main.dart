import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNumber, Color col}) {
    return Expanded(
      child: FlatButton(
        color: col,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(soundNumber: 1, col: Colors.red),
              buildKey(soundNumber: 2, col: Colors.orange),
              buildKey(soundNumber: 3, col: Colors.yellow),
              buildKey(soundNumber: 4, col: Colors.green),
              buildKey(soundNumber: 5, col: Colors.teal),
              buildKey(soundNumber: 6, col: Colors.blue),
              buildKey(soundNumber: 7, col: gitColors.purple),
            ],
          )),
        ),
      ),
    );
  }
}
