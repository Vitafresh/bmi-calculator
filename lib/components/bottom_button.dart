import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: kBottomContainerColor,
          borderRadius: BorderRadius.circular(10),
        ),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Text(buttonTitle, style: kLargeButtonTextStyle),
      ),
    );
  }
}