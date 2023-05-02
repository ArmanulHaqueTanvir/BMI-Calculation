import 'package:bmi_calculator/result_page.dart';

import 'icon_content.dart';
import 'reuseable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'result_page.dart';
import 'IconButton.dart';
import 'bottomButton.dart';
import 'BMI_Calculator_Brain.dart';

enum Gender {
  Male,
  Female,
}

class InputPage extends StatefulWidget {
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectGender;
  int middleNumberHeight = 180;
  int weight = 60;
  int age = 20;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReuseableCard(
                  onPressed: () {
                    setState(() {
                      selectGender = Gender.Male;
                    });
                  },
                  cardChild: iconContent(
                      iconText: 'MALE', iconImage: FontAwesomeIcons.mars),
                  colour: selectGender == Gender.Male
                      ? activeCardColour
                      : inactiveCardColour,
                ),
              ),
              Expanded(
                child: ReuseableCard(
                  onPressed: () {
                    setState(() {
                      selectGender = Gender.Female;
                    });
                  },
                  cardChild: iconContent(
                      iconImage: FontAwesomeIcons.venus, iconText: 'FEMALE'),
                  colour: selectGender == Gender.Female
                      ? activeCardColour
                      : inactiveCardColour,
                ),
              ),
            ],
          )),
          Expanded(
            child: ReuseableCard(
              colour: activeCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: labelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        middleNumberHeight.toString(),
                        style: middleNumTextStyle,
                      ),
                      const Text(
                        'cm',
                        style: labelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: middleNumberHeight.toDouble(),
                      min: 0.0,
                      max: 300.0,
                      onChanged: (double value) {
                        setState(() {
                          middleNumberHeight = value.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colour: activeCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: labelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              weight.toString(),
                              style: middleNumTextStyle,
                            ),
                            const Text(
                              'm',
                              style: labelTextStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icons: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icons: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: activeCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: labelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              age.toString(),
                              style: middleNumTextStyle,
                            ),
                            const Text(
                              'Year',
                              style: labelTextStyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icons: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icons: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            onTap: () {
              Calculator_Brain calc =
                  Calculator_Brain(height: middleNumberHeight, weight: weight);

              // For the move pages
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Resultpage(
                    ResultText: calc.getResult(),
                    bmiResult: calc.Calculate_BMI(),
                    interpretation: calc.getInterpretation(),
                  ),
                ),
              );
            },
            text: 'CALCULATE',
          ),
        ],
      ),
    );
  }
}
