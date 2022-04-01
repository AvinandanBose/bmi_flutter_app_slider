import 'icon_content.dart';
import 'reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height= 180;

  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;

  // void updateColor(Gender selectedGender) {
  //   if (selectedGender == Gender.male) {
  //      if (maleCardColor == inactiveCardColor) {
  //        maleCardColor = activeCardColor;
  //        femaleCardColor = inactiveCardColor;
  //      } else {
  //        maleCardColor = inactiveCardColor;
  //      }
  //    }
  //    if (selectedGender == Gender.female) {
  //      if (femaleCardColor == inactiveCardColor) {
  //        femaleCardColor = activeCardColor;
  //        maleCardColor = inactiveCardColor;
  //      }
  //      else{
  //        femaleCardColor = inactiveCardColor;
  //      }
  //    }
  //  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBackgroundColor,
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: const iconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: const iconContent(
                        icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
           Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children:  <Widget>[
                  const Text(
                    'HEIGHT',
                    style: klabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children:  <Widget> [
                      Text(
                          height.toString(),
                        style: kNumberTextStyle,
                      ),
                      const Text(
                        'cm',
                        style: klabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      activeColor: const Color(0xFFEB1555),
                      inactiveColor: const Color(0xFF8D8E98),
                      onChanged: (double newValue){
                        setState(() {
                          height = newValue.round();
                        });
                      },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: const <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,

                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
    );
  }
}

/*
 Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: const Color(0xFF1D1E33),
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: 200.0,
        width: 170.0,
      ),
 */
