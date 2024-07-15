import 'dart:math';

import 'package:flutter/material.dart';
import 'package:practice/Text.dart';

var random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    // TODO: implement createState
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int number = 2;
  void rollIt() {
    setState(() {
      number = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      children: [
        Image.asset("assets/images/dice-$number.png",
        width:200,
        height: 200,),
        const SizedBox(
          height: 20,
        ),
        TextButton(
        onPressed: rollIt,
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          textStyle: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          )
        ),
         child: const TextWidget("Roll the Dice")),
      ],
    );
  }
}
