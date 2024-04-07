import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/roundIcon.dart';
import '../components/resuablecard.dart';
import '../constants.dart';
import 'result_page.dart';
import '../components/bottombutton.dart';
import '../components/icon_content.dart';
import '../calculator_brain.dart';

//enums code
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180; //it is going to change everytime
  int weight = 60;
  int age = 19;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR',
              style: kLargeButtonTextStyle.copyWith(color: Colors.white)),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Expanded(
            //change able
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colur: selectedGender == Gender.male
                      ? kactivecardColor
                      : kinactivecardColor,
                  //colur: malecardcolor, //1st shows in active position
                  cardChild:
                      IconContent(icon: FontAwesomeIcons.mars, label: 'MALE'),
                )),
                // SizedBox(width: 5),
                Expanded(
                    child: ReusableCard(
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        colur: selectedGender == Gender.female
                            ? kactivecardColor
                            : kinactivecardColor,
                        cardChild: IconContent(
                            icon: FontAwesomeIcons.venus, label: 'FEMALE')))
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colur: kactivecardColor,
              cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Height',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(), style: kNumberTextstyle),
                        Text('cm', style: kLabelTextStyle),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(
                            overlayRadius: 30.0), //for opacity,

                        thumbColor: Colors.pink,
                        activeTrackColor: Colors.white, // SHOWS THEME
                        inactiveTrackColor: Color(0xFF8D8e98),
                        overlayColor: Color(0x29EB1555),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0, //SHOWS PROPERTY VALUE
                        max: 220.0,
                        onChanged: (double newValue) {
                          //pass by users
                          setState(() {
                            height = newValue.round();
                          });

                          print(newValue);
                        },
                      ),
                    )
                  ]),
            ),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                  child: ReusableCard(
                colur: kactivecardColor,
                cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Weight', style: kLabelTextStyle),
                      Text(weight.toString(), style: kNumberTextstyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onpres: () {
                              setState(() {
                                weight--; //decreased the weight
                              });
                            },
                          ),
                          // FloatingActionButton(
                          //   onPressed: () {},
                          //   child: Icon(Icons.add, color: Colors.white),
                          //   backgroundColor: Color(0xFF4C4F5E),
                          //   shape: CircleBorder(),
                          // ),
                          const SizedBox(width: 10.0),
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onpres: () {
                              setState(() {
                                weight++;
                              });
                            },
                          )
                        ],
                      ),
                    ]),
              )),
              Expanded(
                  child: ReusableCard(
                colur: kactivecardColor,
                cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Age', style: kLabelTextStyle),
                      Text(age.toString(), style: kNumberTextstyle),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onpres: () {
                                  setState(() {
                                    age--;
                                  });
                                }),
                            SizedBox(width: 10.0),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onpres: () {
                                  setState(() {
                                    age++;
                                  });
                                })
                          ])
                    ]),
              )),
            ]),
          ),
          BottomButton(
            buttonTittle: 'CALCULATE',
            onTap: () {
              CalculatorBrain cal =
                  CalculatorBrain(height: height, weight: weight);
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  print(cal.calculatebimresult());
                  print(cal.getInterpretation());
                  print(cal.getResult());

                  return ResultPage(
                    resultBMI: "${cal.calculatebimresult()}",
                    interpretation: "${cal.getInterpretation()}",
                    resultText: "${cal.getResult()}",
                  );
                },
              ));
            },
          ),
        ]));
  }
}



// void main() {
//   Example example = Example();
//   print(example.name);
// }

// class Example {
//   final name;
//   Example({
//     @required this.name,
//   });
// }
