import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white24,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void NumberRoll() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
// easy way of adding image widget
            child: FlatButton(
              onPressed: () {
                NumberRoll();

                print(
                  'left button pressed',
                );
              },
              child: Image.asset(
                'images/dice$leftDiceNumber.png',
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                NumberRoll();

                print(
                  'right button pressed',
                );
              },
              child: Image(
                image: AssetImage(
                  'images/dice$rightDiceNumber.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
