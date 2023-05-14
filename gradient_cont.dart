import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  
   @override
   Widget build(context){     //this build method is called if it is added in the widget tree
      return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurpleAccent,Colors.white54]
            )
          ),
        
      child: const Center(
        child: Diceroller()  
      )
      );

   }
}

class Textpart extends StatelessWidget {
    Textpart(this.text,{super.key});
    String text;
    @override
    Widget build(context){
      return  Text(text,
            style: const TextStyle(color: Colors.amberAccent, 
            fontSize: 30,
          ),
        );

    }
}