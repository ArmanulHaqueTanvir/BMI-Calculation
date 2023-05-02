import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reuseable_card.dart';
import 'package:flutter/material.dart';
import 'bottomButton.dart';

class Resultpage extends StatelessWidget {
  Resultpage(
      {required this.ResultText,
      required this.bmiResult,
      required this.interpretation});
  final String bmiResult;
  final String ResultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colour: activeCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    ResultText,
                    style: resultTitle,
                  ),
                  Text(
                    bmiResult,
                    style: BMICalculateText,
                  ),
                  Text(
                    interpretation,
                    style: resultBodyTextStyle,
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              text: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
