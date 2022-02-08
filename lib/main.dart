import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Xylo());
}

class Xylo extends StatelessWidget {
  const Xylo({Key? key}) : super(key: key);

  void playsound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Expanded buildkey({num, colord}) {
    return Expanded(
      child: Container(
        color: colord,
        child: TextButton(
          onPressed: () {
            playsound(num);
          },
          child: Text(
            'Music $num',
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text('Audio Player App'),
            ),
          ),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(num: 1, colord: Colors.green),
              buildkey(num: 2, colord: Colors.blueAccent),
              buildkey(num: 3, colord: Colors.black),
              buildkey(num: 4, colord: Colors.lightBlue),
              buildkey(num: 5, colord: Colors.teal),
              buildkey(num: 6, colord: Colors.red),
              buildkey(num: 7, colord: Colors.black26),
            ],
          ),
        ),
      ),
    );
  }
}
