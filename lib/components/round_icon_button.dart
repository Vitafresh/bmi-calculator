import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Color(0xFF2C2F42),
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      elevation: 6.0,
      onPressed: onPressed,
    );
  }
}
