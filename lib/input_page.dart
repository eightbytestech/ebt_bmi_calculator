import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bmi_constants.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

enum Gender { male, female }


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReUsableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male ? kActiveCardColor : kInactiveCardColor,
                    cardChild: IconContent(
                      iconName: FontAwesomeIcons.mars,
                      cardText: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReUsableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female ? kActiveCardColor : kInactiveCardColor,
                    cardChild: IconContent(
                      iconName: FontAwesomeIcons.venus,
                      cardText: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReUsableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '180',
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                        )
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReUsableCard(
                    colour: kActiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReUsableCard(
                    colour: kActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

