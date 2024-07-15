import 'package:flutter/material.dart';
import 'package:practice/dice_roller.dart';

class GradientColor extends StatelessWidget{
  const GradientColor({super.key});
  @override
  Widget build(context){
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 168, 205, 235),
              Colors.blue,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
          ),
          child:const Center(
            child:Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DiceRoller(),
              ],
            ),
          )
        );
  }
}