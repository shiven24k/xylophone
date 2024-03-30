import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone'),
        ),
        body: XylophoneApp(),
      ),
    ),
  );
}

class XylophoneApp extends StatefulWidget {
  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  Expanded smallkey({int fileNum, Color color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          final player = AudioPlayer();
          player.play(AssetSource('note$fileNum.wav'));
        },
        child: Container(
          height: 100.0,
          width: double.infinity,
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          smallkey(fileNum: 1, color: Colors.red),
          smallkey(fileNum: 2, color: Colors.orange),
          smallkey(fileNum: 3, color: Colors.yellow),
          smallkey(fileNum: 4, color: Colors.lightGreenAccent),
          smallkey(fileNum: 5, color: Colors.green),
          smallkey(fileNum: 6, color: Colors.blue),
          smallkey(fileNum: 7, color: Colors.purple),
        ],
      ),
    );
  }
}
