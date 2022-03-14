import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('xylophone')),
        ),
        body: Container(
          color: Colors.black,
          child: _Screen1(),
        ),
      ),
    );
  }
}

class _Screen1 extends StatelessWidget {
  _Screen1({Key? key}) : super(key: key);
  final player = AudioCache();
  void chooseSong(int song) {
    player.play('note$song.wav');
  }

  Expanded expandedWidget({Color? color, required int songNum}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.zero),
        ),
        onPressed: () {
          chooseSong(songNum);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        expandedWidget(
          songNum: 1,
          color: Color.fromARGB(255, 148, 0, 211),
        ),
        expandedWidget(
          songNum: 2,
          color: Color.fromARGB(255, 75, 0, 130),
        ),
        expandedWidget(
          songNum: 3,
          color: Colors.blue,
        ),
        expandedWidget(
          songNum: 4,
          color: Colors.green,
        ),
        expandedWidget(
          songNum: 5,
          color: Colors.yellow,
        ),
        expandedWidget(
          songNum: 6,
          color: Colors.orange,
        ),
        expandedWidget(
          songNum: 7,
          color: Colors.red,
        ),
      ],
    );
  }
}
