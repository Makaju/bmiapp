import 'package:bmiapp/constants.dart';
import 'package:bmiapp/reusablecardss.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {


  ResultPage({required this.bmiResult,required this.resultText,required this.resultInterpretation});

  final String bmiResult;
  final String resultText;
  final String resultInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your BMI result here'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Text(
                'Your Score',
                style: kResultPageTitle,
              )),
              Expanded(
                  flex: 6,
                  child: ReusableCardss(
                      colour: kInactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            resultText,
                            style: kResultStatus,
                          ),
                          Text(
                            bmiResult,
                            style: kResultScore,
                          ),
                          Text(
                            resultInterpretation,
                            style: kLabelTextStyle,
                          ),
                        ],
                      ))),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    color: kBottomContainerColor,
                    height: kBottomContainerHeight,
                    margin: const EdgeInsets.only(top: 5),
                    width: double.infinity,
                    child: Center(
                        child: Text(
                      'Re-Calculate',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
