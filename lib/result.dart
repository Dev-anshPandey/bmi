import 'package:bmi/const.dart';
import 'bmical.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  String first;
  String second;
  String third;
  Result({required this.first, required this.second, required this.third});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI"),
          backgroundColor: Color(0xFF0A0E21),
        ),
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: Text(
                "Your Result",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF1D1E33),
              ),
              width: double.infinity,
              margin: EdgeInsets.all(20),
              //color: Color(0xFF111328),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    second.toUpperCase(),
                    style: TextStyle(
                        fontSize: 22,
                        color: Color(0xFF24D876),
                        fontWeight: FontWeight.bold),
                  ),
                  // SizedBox(
                  //   height: 40,
                  // ),
                  Text(
                    first,
                    style:
                        TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0,0,10.0,0),
                    child: Text(
                      third,
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          // SizedBox(
          //   height: 100,
          // ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: Color(0xFFEB1555),
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Re-Calculate",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          )
        ]));
  }
}
