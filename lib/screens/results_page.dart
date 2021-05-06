import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kTitleApp),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(child: Text("Результат:",style: kTitleTextStyle,))),
          Expanded(
            flex: 5,
            child: ReusableCard(cardColor: kActiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Жирный',style: kResultTextStyle,),
                Text('26.1',style: kBmiTextStyle,),
                Text('Твой результат ужасен, надо меньше жрать и больше бегать!', textAlign: TextAlign.center),
              ],
            ),),
          ),
          BottomButton(onTap: (){
            Navigator.pop(context);
          }, buttonTitle: "ReCalc"),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          //   child: Text("Go Back"),
          // ),
        ],
      ),
    );
  }
}
