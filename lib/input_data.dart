import 'dart:ui';
import 'package:bmi/result.dart';

import 'icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card.dart';
import 'const.dart';
import 'bmical.dart';

enum Gender { male, female, nul }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

// int cmaleColor = maleColor;
// int cfemaleColor = femaleColor;
Gender a = Gender.nul;
int height = 177;
int weight = 55;
int age = 19;

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    // void ab() {
    //   setState(() {
    //     b = 0;
    //     weight--;
    //   });
    // }

    // cc( a) {
    //   if (a == Gender.male) {
    //     cmaleColor = 0xFF111328;
    //     cfemaleColor = 0xFF1D1E33;
    //   }
    //   if (a == Gender.female) {
    //     cfemaleColor = 0xFF111328;
    //     cmaleColor = 0xFF1D1E33;
    //   }
    // }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Reuseable(
                    Color(a == Gender.male ? cfemaleColor : cmaleColor),
                    child: cr(FontAwesomeIcons.mars, "MALE"),
                    re: () {
                      setState(() {
                        a = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: Reuseable(
                    Color(a == Gender.female ? cfemaleColor : cmaleColor),
                    re: () {
                      setState(() {
                        a = Gender.female;
                      });
                    },
                    child: cr(FontAwesomeIcons.venus, "FEMALE"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Reuseable(
              Color(0xFF1D1E33),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xFF8D8E98), fontSize: 20.0),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(),
                          textAlign: TextAlign.center, style: text()),
                      Text("cm")
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                        thumbColor: Color(0xFFEB1555),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        overlayColor: Color(0x29EB1555)),
                    child: Slider(
                        value: height.toDouble(),
                        min: 100,
                        max: 220,
                        onChanged: (double newheight) {
                          setState(() {
                            height = newheight.round();
                          });
                        }),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: Reuseable(
                  Color(0xFF1D1E33),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Weight",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: Color(0xFF8D8E98), fontSize: 20.0),
                      ),
                      Text(weight.toString(),
                          textAlign: TextAlign.center, style: text()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyButton(
                            ic: () {
                              setState(() {
                                weight--;
                              });
                            },
                            child: FontAwesomeIcons.minus,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          MyButton(
                            ic: () {
                              setState(() {
                                weight++;
                              });
                            },
                            child: FontAwesomeIcons.plus,
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
                Expanded(
                    child: Reuseable(
                  Color(0xFF1D1E33),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Age",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: Color(0xFF8D8E98), fontSize: 20.0),
                      ),
                      Text(
                        age.toString(),
                        textAlign: TextAlign.center,
                        style: text(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyButton(
                            child: FontAwesomeIcons.minus,
                            ic: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          MyButton(
                              child: FontAwesomeIcons.plus,
                              ic: () {
                                setState(() {
                                  age++;
                                });
                              })
                        ],
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Cal aa = new Cal(height: height, weight: weight);
             Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Result(
                        first: aa.bmi(),
                        second: aa.result(),
                      third :aa.reesult(),
                      )),
                      );
                      }


              ,
            child: Container(
              child: Center(
                child: Text(
                  "Calculate",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
              width: double.infinity,
              height: 60.0,
            ),
          )
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final child;
  final ic;

  MyButton({this.child, this.ic});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        onPressed: ic,
        shape: CircleBorder(),
        elevation: 2.0,
        fillColor: Color(0xFF4C4F5E),
        constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
        child: Icon(child));
  }
}
