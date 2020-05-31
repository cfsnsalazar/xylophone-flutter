import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(String sound){
    final player = AudioCache();
    player.play(sound);
  }

  Expanded buildKey({String sound, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(sound);
        },
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
              buildKey(sound: 'note1.wav', color: Colors.red),
              buildKey(sound: 'note2.wav', color: Colors.orange),
              buildKey(sound: 'note3.wav', color: Colors.yellow),
              buildKey(sound: 'note4.wav', color: Colors.lightGreen),
              buildKey(sound: 'note5.wav', color: Colors.green),
              buildKey(sound: 'note6.wav', color: Colors.blue),
              buildKey(sound: 'note7.wav', color: Colors.purple),
            ],
          )
        ),
      ),
    );
  }
}
