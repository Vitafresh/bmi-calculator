import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'round_icon_button.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  InputPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color _maleCardColor = kInActiveCardColor;
  Color _femaleCardColor = kInActiveCardColor;
  int _height = 175;
  int _weight = 60;
  int _age = 30;

  Gender selectedGender;

  void sliderChanged(double sliderValue) {
    print('Slider changed');
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(kTitleApp),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        // selectedGender=Gender.male;
                        _maleCardColor = (_maleCardColor == kActiveCardColor)
                            ? kInActiveCardColor
                            : kActiveCardColor;
                        _femaleCardColor = kInActiveCardColor;
                      });
                      print("Male selected");
                    },
                    //cardColor: (selectedGender==Gender.male) ? activeCardColor : inActiveCardColor,
                    cardColor: _maleCardColor,
                    cardChild: IconAndLabel(
                        icon: FontAwesomeIcons.mars, label: "ПАЦАН"),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      print("FeMale selected");
                      setState(() {
                        // selectedGender = Gender.female;
                        _femaleCardColor =
                            (_femaleCardColor == kActiveCardColor)
                                ? kInActiveCardColor
                                : kActiveCardColor;
                        _maleCardColor = kInActiveCardColor;
                      });
                    },
                    //cardColor: (selectedGender==Gender.female) ? activeCardColor : inActiveCardColor,
                    cardColor: _femaleCardColor,
                    cardChild: IconAndLabel(
                        icon: FontAwesomeIcons.venus, label: "ДЕВКА"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'РОСТ',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        _height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        ' cm',
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  Slider(
                    value: _height.toDouble(),
                    min: 120,
                    max: 220,
                    onChanged: (double sliderValue) {
                      setState(() {
                        _height = sliderValue.round();
                      });
                      //_height = sliderValue.round();
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardColor: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ВЕС',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          _weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(icon: FontAwesomeIcons.minus,
                            onPressed: (){
                              setState(() {
                                _weight--;
                              });
                            },),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(icon: FontAwesomeIcons.plus,
                            onPressed: (){
                              setState(() {
                                _weight++;
                              });
                            },),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(cardColor: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('ВОЗРАСТ',style: kLabelTextStyle,),
                        Text(_age.toString(),style: kNumberTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: (){
                                  setState(() {
                                    _age--;
                                  });
                                },
                            ),
                            SizedBox(width: 10,),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: (){
                                setState(() {
                                  _age++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              print('Calculate pressed');
              Navigator.pushNamed(context, '/results');
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: kBottomContainerColor,
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.infinity,
              height: kBottomContainerHeight,
              child: Text(
                'РАСЧЕТ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

