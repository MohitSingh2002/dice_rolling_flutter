import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.cyan.shade900,
        title: Text('Dice Rolling',
        style: TextStyle(
          color: Colors.white70,
        ),
        ),
      ),
      body: DiceRolling(),
    ),
  ));
}

class DiceRolling extends StatefulWidget {
  @override
  _DiceRollingState createState() => _DiceRollingState();
}

class _DiceRollingState extends State<DiceRolling> {
  int upDice=1;
  int downDice=1;
  void changeNumber() {
    setState(() {
      upDice=Random().nextInt(6)+1;
      downDice=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset('images/dice$upDice.png'),
              ),
              onPressed: (){
                changeNumber();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset('images/dice$downDice.png'),
              ),
              onPressed: (){
                changeNumber();
              },
            ),
          ),
        ],
      ),
    );
  }
}
