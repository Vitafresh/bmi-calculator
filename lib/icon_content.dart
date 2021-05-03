import 'package:flutter/material.dart';

const double iconSize = 70;
const labelTextStyle = TextStyle(fontSize: 18, color: Color(0xFF8D8E98));
const double sizedBoxHeight = 10;

class IconAndLabel extends StatelessWidget {
  IconAndLabel({this.icon, this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          //FontAwesomeIcons.mars,
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: sizedBoxHeight,
        ),
        Text(
          label,
          style: labelTextStyle,
        )
      ],
    );
  }
}
