import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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
  int leftDice = 1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    random();
                  });
                },
                child: Image.asset('images/dice$leftDice.png')),
          ),
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
                onPressed: () {
                  setState(() {
                   random();
                  });
                },
                child: Image.asset('images/dice$rightDice.png')),
          ),
        ],
      ),
    );
  }

  void random(){
    rightDice = Random().nextInt(6) + 1;
    leftDice = Random().nextInt(6) + 1;
  }
}
