import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  List<String> logs;
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      changeDiceFace();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Image(
                        image: AssetImage('images/dice$leftDiceNumber.png'),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      changeDiceFace();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Image(
                        image: AssetImage('images/dice$rightDiceNumber.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
