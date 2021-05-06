import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/results_page.dart';

void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kTitleApp,
      theme: ThemeData.dark().copyWith(
        sliderTheme: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.white,
          inactiveTrackColor: Color(0xFF8D8E89),
          thumbColor: Color(0xFFEB1555),
          overlayColor: Color(0x29EB1555),
          //with 0x29 (or 16%) transparency
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 25),
        ),
        primaryColor: Color(0xFF0A0D22),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
        //textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
      ),
      // ThemeData.dark(),
      // ThemeData(
      //   // This is the theme of your application.
      //   primarySwatch: Colors.amber,
      // ),
      //home: InputPage(title: kTitleApp),

      initialRoute: "/", //Main screen, loads at startup
      //screens route, e.d. Map of labels and corresponding screens
      routes: {
        "/" : (context)=>InputPage(),
        "/results":(context)=>ResultsPage()
      },
    );
  }
}




