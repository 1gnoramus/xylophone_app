import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                onPressed: () {
                  PlaySound(1);
                },
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange)),
                onPressed: () {
                  PlaySound(2);
                },
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow)),
                onPressed: () {
                  PlaySound(3);
                },
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  PlaySound(4);
                },
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal)),
                onPressed: () {
                  PlaySound(5);
                },
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue)),
                onPressed: () {
                  PlaySound(6);
                },
              ),
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple)),
                onPressed: () {
                  PlaySound(7);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
