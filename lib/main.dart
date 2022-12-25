import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
//import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int num) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$num.wav'));
  }

  Expanded BuildKey({int soundnumber, Color clr}) {
    return Expanded(
      flex: 2,
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: clr),
        onPressed: () {
          playsound(soundnumber);
        },
        //child: Text('CLick Me', background),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Center(
                  child: Text("Project - Xylohpone",
                      style: TextStyle(
                          color: Colors.white60,
                          fontFamily: 'Unbounded',
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              BuildKey(soundnumber: 1, clr: Colors.red),
              BuildKey(soundnumber: 2, clr: Colors.orange),
              BuildKey(soundnumber: 3, clr: Colors.yellow),
              BuildKey(soundnumber: 4, clr: Colors.green),
              BuildKey(soundnumber: 5, clr: Colors.teal),
              BuildKey(soundnumber: 6, clr: Colors.blue),
              BuildKey(soundnumber: 7, clr: Colors.purple),
              Expanded(
                flex: 1,
                child: Center(
                  child: Text("Created by Thirumurugan",
                      style: TextStyle(
                          color: Colors.white60,
                          fontFamily: 'Unbounded',
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
