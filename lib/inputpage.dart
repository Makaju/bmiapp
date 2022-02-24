import 'package:bmiapp/calculatorBrain.dart';
import 'package:bmiapp/result_page.dart';
import 'package:bmiapp/reusablecard.dart';
import 'package:bmiapp/reusablecardss.dart';
import 'package:bmiapp/rounactionbutton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'itemcontent.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;
  //
  // updateColor(Gender selectedGender ) {
  //   if (selectedGender == Gender.male) {
  //     if (maleCardColor == inactiveCardColor) {
  //       maleCardColor = activeCardColor;
  //       femaleCardColor=inactiveCardColor;
  //     } else {
  //       maleCardColor = inactiveCardColor;
  //     }
  //   }
  //   if(selectedGender==Gender.female){
  //     if(femaleCardColor==inactiveCardColor){
  //       femaleCardColor=activeCardColor;
  //       maleCardColor=inactiveCardColor;
  //     }
  //     else{
  //       femaleCardColor=inactiveCardColor;
  //     }
  //   }
  //
  // }
  void _genderSelect(Gender value) {
    setState(() {
      selectedGender = value;
    });
    //print("from function " + selectedGender.toString());
  }

  int height = 120;
  int weights = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    //this is to call function
                    genderSelect: () => _genderSelect(Gender.male),
                    //Male Color
                    colour: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      subTitle: 'MALE',
                      imageIcon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    //female color
                    colour: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      subTitle: 'FEMALE',
                      imageIcon: FontAwesomeIcons.venus,
                    ),
                    genderSelect: () => _genderSelect(Gender.female),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: ReusableCardss(
            colour: kInactiveCardColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Height',
                  style: kLabelTextStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    // Slider(value: value, onChanged: onChanged)
                    Text(
                      height.toString(),
                      style: kNumberFontStyle,
                    ),
                    Text(' CM'),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0xFFEB1555),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8D8E98),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0)),
                  child: Slider(
                    value: height.toDouble(),
                    onChanged: (double newValue) {
                      print(newValue);
                      setState(() {
                        height = newValue.round();
                      });
                    },
                    min: 0,
                    max: 220,
                  ),
                )
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCardss(
                    colour: kInactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weights.toString(),
                          style: kNumberFontStyle,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: RoundActionButton(
                                actionIcon: FontAwesomeIcons.minus,
                                number: weights,
                                onTap: () {
                                  setState(() {
                                    if (weights < 2) {
                                      weights;
                                    } else {
                                      weights--;
                                    }
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child:
                              RoundActionButton(
                                actionIcon: FontAwesomeIcons.plus,
                                number: weights,
                                onTap: () {
                                  setState(() {
                                    weights++;
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCardss(
                    colour: kInactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberFontStyle,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: RoundActionButton(
                                  actionIcon: FontAwesomeIcons.minus,
                                  number: age,
                                  onTap: () {
                                    setState(() {
                                      if (age < 2) {
                                        age;
                                      } else {
                                        age--;
                                      }
                                    });
                                  }),
                            ),
                            Expanded(
                              child:
                              RoundActionButton(
                                  actionIcon: FontAwesomeIcons.plus,
                                  number: age,
                                  onTap: () {
                                    setState(() {
                                      age++;
                                    });
                                  }),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              CalculatorBrain calc = CalculatorBrain(height: height, weight: weights);



              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  ResultPage(
                  bmiResult: calc.calculateBmi(),
                  resultText: calc.getResult(),
                  resultInterpretation: calc.getInterpretation(),

                )),
              );
            },
            child: Container(
              color: kBottomContainerColor,
              height: kBottomContainerHeight,
              margin: const EdgeInsets.only(top: 5),
              width: double.infinity,
              child: Center(child: Text('Calculate Your BMI',style: TextStyle(color: Colors.white, fontSize: 25.0,fontWeight: FontWeight.bold,),)),
            ),
          ),
        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
