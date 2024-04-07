import 'package:bmi_calculator_flutter/constants.dart';
import 'package:flutter/material.dart';
import '../components/resuablecard.dart';
import '../components/bottombutton.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.resultBMI,
      @required this.interpretation,
      @required this.resultText});

  final String? resultBMI;
  final String? resultText;
  final String? interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('BIM CALCULATOR RESULT')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result', style: kTittleStyle),
            )),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  colur: kactivecardColor,
                  cardChild: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(resultText.toString(), style: kresulttext),
                        Text(resultBMI.toString(), style: kBimtextstyle),
                        Text(
                          interpretation.toString(),
                          textAlign: TextAlign.justify,
                          style: kBodytextstyle,
                        )
                      ],
                    ),
                  ),
                )),
            BottomButton(
              buttonTittle: ' RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
