import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}




class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 5;
  

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(onPressed: () {
              setState(() {
                leftDiceNumber = Random().nextInt(6)+1;
              
              });
               

             },
            child: Image.asset('images/dice$leftDiceNumber.png')),
          ),
          ),
          Expanded(
            child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(onPressed: () { 
              setState(() {
                rightDiceNumber = Random().nextInt(6)+1;
                
              });
             },
            child: Image.asset('Images/dice$rightDiceNumber.png')),
          ),
          ),
        ],
      ),
    );
  }
}