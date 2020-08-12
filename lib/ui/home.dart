import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  Widget buildKey(int soundNote, Color color){
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final player = AudioCache();
          player.play("note$soundNote.wav");
        },
        child: null,
        color: color),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildKey(1,Colors.lime),
          buildKey(2,Colors.brown),
          buildKey(3,Colors.blueGrey),
          buildKey(4,Colors.redAccent),
          buildKey(5,Colors.yellow),
          buildKey(6,Colors.teal),
          buildKey(7,Colors.pink),


        ],
      )),
    );
  }
}
