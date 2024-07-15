import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget{
  const TextWidget( this.text, {super.key});
  final String text;
  @override
  Widget build(context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
    );
  }
}