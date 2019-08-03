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

  Color maleCardColor = cardColor;
  Color femaleCardColor = inactiveCardColor;

  //1 = male, 2 = female
  void updateColor(int gender) {
    //male card color
    if(gender == 1) {
      if(maleCardColor == inactiveCardColor) {
        maleCardColor = cardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
        femaleCardColor = cardColor;
      }
    }
    //female card color
    if(gender == 2) {
      if(femaleCardColor == inactiveCardColor) {
        femaleCardColor = cardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
        maleCardColor = cardColor;
      }
    }
  }

  void updateColorViaEnum(Gender gender) {
    //male card color
    if(gender == Gender.male) {
      if(maleCardColor == inactiveCardColor) {
        maleCardColor = cardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
        femaleCardColor = cardColor;
      }
    }
    //female card color
    if(gender == Gender.female) {
      if(femaleCardColor == inactiveCardColor) {
        femaleCardColor = cardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
        maleCardColor = cardColor;
      }
    }
  }

  void updateColorViaTernery(Gender gender) {

  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        //updateColor(1);
                        updateColorViaEnum(Gender.Male);
                      });
                    },
                    child: ReUsableCard(
                      colour: maleCardColor,
                      cardChild: IconContent(
                        iconName: FontAwesomeIcons.mars,
                        cardText: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        //updateColor(2);
                        updateColorViaEnum(Gender.Female);
                      });
                    },
                    child: ReUsableCard(
                      colour: femaleCardColor,
                      cardChild: IconContent(
                        iconName: FontAwesomeIcons.venus,
                        cardText: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReUsableCard(
              colour: cardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReUsableCard(
                    colour: cardColor,
                  ),
                ),
                Expanded(
                  child: ReUsableCard(
                    colour: cardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

