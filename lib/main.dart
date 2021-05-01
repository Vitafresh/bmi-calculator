import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bmi Calculator',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
        scaffoldBackgroundColor: Color(0xFF111428),
        //textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
      ),
      // ThemeData.dark(),
      // ThemeData(
      //   // This is the theme of your application.
      //   primarySwatch: Colors.amber,
      // ),
      home: InputPage(title: 'BMI CALCULATOR'),
    );
  }
}




