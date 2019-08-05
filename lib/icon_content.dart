import 'package:flutter/material.dart';
import 'bmi_constants.dart';

class IconContent extends StatelessWidget {

  IconContent({this.iconName, this.cardText});

  final IconData iconName;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          //FontAwesomeIcons.mars,
          iconName,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
            cardText,
            style: kLabelTextStyle,
        )
      ],
    );
  }
}