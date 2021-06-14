import 'package:flutter/material.dart';
import 'resuable_card.dart';
import 'constants.dart';
import 'bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmiresult, this.interpretation, this.resultText});

  final String bmiresult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Your Result',
            style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Expanded(
            flex: 5,
            child: ResuableCard(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: TextStyle(
                        color: Color(0xFF24D876),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    bmiresult,
                    style:
                        TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    interpretation,
                    style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
