import 'package:flutter/material.dart';
import 'package:first_app/gradient_cont.dart';
void main() {     //entry point of the dart app. Already defined in the dar language
  runApp( MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.cyan,
      body: GradientContainer(),
    ),
  )
  );    ///this is part where code is executed on the phone
}


