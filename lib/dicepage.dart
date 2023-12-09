import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int rightDiceNumber = 1;
  int leftDiceNumber = 1;

  void ChangeDieFace(){
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      Row(
        children: [
          Expanded(
            child:
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: (){
                  ChangeDieFace();
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child:
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: (){
                  ChangeDieFace();
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
