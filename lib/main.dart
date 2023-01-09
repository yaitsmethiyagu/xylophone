import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {

  void playSound(int note) {
    final player = AudioPlayer();
    player.play(AssetSource('note$note.wav'));
  }

  Expanded xylophoneKey(
      {String keyText = "KeyText",
      Color keyTextColor = Colors.teal,
      Color keyColor = Colors.teal,
      int keyNote = 7}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(keyNote);
        },
        style: TextButton.styleFrom(backgroundColor: keyColor),
        child:
            Text(keyText, style: TextStyle(color: keyTextColor, fontSize: 25)),
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
            children: [
              xylophoneKey(
                  keyText: "Sa",
                  keyTextColor: Colors.white,
                  keyColor: Colors.red,
                  keyNote: 1),
              xylophoneKey(
                  keyText: "Ri",
                  keyTextColor: Colors.white,
                  keyColor: Colors.orange,
                  keyNote: 2),
              xylophoneKey(
                  keyText: "Ga",
                  keyTextColor: Colors.black,
                  keyColor: Colors.yellow,
                  keyNote: 3),
              xylophoneKey(
                  keyText: "Ma",
                  keyTextColor: Colors.white,
                  keyColor: Colors.green,
                  keyNote: 4),
              xylophoneKey(
                  keyText: "Pa",
                  keyTextColor: Colors.white,
                  keyColor: Colors.blue,
                  keyNote: 5),
              xylophoneKey(
                  keyText: "Da",
                  keyTextColor: Colors.white,
                  keyColor: Colors.indigo,
                  keyNote: 6),
              xylophoneKey(
                  keyText: "Ni",
                  keyTextColor: Colors.white,
                  keyColor: Colors.purple,
                  keyNote: 7),
            ],
          ),
        ),
      ),
    );
  }
}
