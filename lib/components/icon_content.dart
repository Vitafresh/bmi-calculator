import 'package:flutter/material.dart';
import '../constants.dart';


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
          size: kIconSize,
        ),
        SizedBox(
          height: kSizedBoxHeight,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
