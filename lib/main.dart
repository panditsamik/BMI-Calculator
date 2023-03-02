import 'package:bmi_calculator/femalefile.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'malefile.dart';
import 'femalefile.dart';
import 'weightfile.dart';
import 'agefile.dart';
import 'main1.dart';
import 'brain.dart';

int height = 160;
int age = 20;
int weight = 58;
Color maleCardcolour = const Color(0xFF003566);
Color femaleCardcolour = const Color(0xFF003566);
Color maleactiveCardcolour = const Color(0xFF001d3d);
Color maleinactiveCardcolour = const Color(0xFF003566);
Color femaleactiveCardcolour = const Color(0xFF001d3d);
Color femaleinactiveCardcolour = const Color(0xFF003566);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF001d3d),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF141b41),
          title: const Center(
            child: Text(
              'BMI CALCULATOR',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.0,
              ),
            ),
          ),
        ),
        body: const BMI_Calculator_App(),
      ),
    ),
  );
}

// Colour change for card when selected and not selected
void changeCardColour(int gender) {
  if (gender == 1) {
    if (maleCardcolour == maleinactiveCardcolour) {
      maleCardcolour = maleactiveCardcolour;
      femaleCardcolour = femaleinactiveCardcolour;
    } else {
      maleCardcolour = maleinactiveCardcolour;
    }
  }
  if (gender == 2) {
    if (femaleCardcolour == femaleinactiveCardcolour) {
      femaleCardcolour = femaleactiveCardcolour;
      maleCardcolour = maleinactiveCardcolour;
    } else {
      femaleCardcolour = femaleinactiveCardcolour;
    }
  }
}

class BMI_Calculator_App extends StatefulWidget {
  const BMI_Calculator_App({Key? key}) : super(key: key);

  @override
  State<BMI_Calculator_App> createState() => _BMI_Calculator_AppState();
}

class _BMI_Calculator_AppState extends State<BMI_Calculator_App> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 5,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    changeCardColour(1);
                  });
                },
                child: Malefile(),
              ),
            ),
            Expanded(
              flex: 5,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    changeCardColour(2);
                  });
                },
                child: Femalefile(),
              ),
            ),
          ],
        ),
        Expanded(
          flex: 5,
          child: heightContainer(context),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Expanded(
              flex: 5,
              child: WeightFile(),
            ),
            Expanded(
              flex: 5,
              child: AgeFile(),
            ),
          ],
        ),
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {
              // Create an object of the class CalculatorBrain in brain.dart file
              CalculatorBrain results =
                  CalculatorBrain(height: height, weight: weight);
              String bmi_Result = results.getBMI();
              String result = results.getResult();
              String interpretation = results.getinterpretation();

              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                        resultTest: result,
                        bmiResult: bmi_Result,
                        interpretation: interpretation),
                  ),
                );
              });
            },
            child: Container(
              margin: const EdgeInsets.only(top: 8.0),
              height: 5.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xFF28afb0),
              ),
              child: const Center(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

  Container heightContainer(BuildContext context) {
    return Container(
      height: 120.0,
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: const Color(0xFF003566),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'HEIGHT',
            style: TextStyle(
              fontSize: 15.0,
              color: Color(0XFFadb5bd),
              fontWeight: FontWeight.normal,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                height.toString(),
                style: const TextStyle(fontSize: 50.0, color: Colors.white),
              ),
              const SizedBox(width: 0.0),
              const Text(
                'cm',
                style: TextStyle(
                  fontSize: 17.0,
                  color: Color(0XFFadb5bd),
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0.3,
                ),
              ),
            ],
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: const Color(0xFF28afb0),
              inactiveTrackColor: const Color(0xFFadb5bd),
              thumbColor: const Color(0xFF28afb0),
              overlayColor: const Color(0xFFaecae2),
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
              overlayShape: const RoundSliderOverlayShape(overlayRadius: 30.0),
            ),
            child: Slider(
              value: height.toDouble(),
              min: 120.0,
              max: 320.0,
              onChanged: (double newValue) {
                setState(() {
                  height = newValue.round();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
