import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class Diceroller extends StatefulWidget {
    const Diceroller({super.key});
    @override
    State<Diceroller> createState() {     //value passed State<> should be class name.
        return _DicerollerState();
    }
}

class _DicerollerState extends State<Diceroller> {        //tab is indicating private class
    var currrolldice = 2;
    
    void rollDice(){
      setState(() {                               //tells flutter to reexecute the build state
        currrolldice = randomizer.nextInt(6)+1;
      });
      
    }
    @override
    Widget build(context){
      return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Image.asset('assets/images/dice-$currrolldice.png', 
        width: 200,), 
        TextButton(
          onPressed: rollDice , //anonymous function telling to execute a void function when clicked
          style: TextButton.styleFrom(foregroundColor: Colors.black87, 
          textStyle: const TextStyle(fontSize: 28)
          ),
          child: const Text('Roll Dice!'),
          )

          ],
        );
    }
}                         