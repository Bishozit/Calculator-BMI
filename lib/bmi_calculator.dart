import 'dart:html';

import 'package:flutter/material.dart';
import 'package:mad7_day17/result.dart';

class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  double height = 165;

  Color bgclr = Color(0xff090C1F);
  Color cardclr = Color(0xff414141);
  bool ismale = true;
  int weight = 60;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgclr,
      appBar: AppBar(
        backgroundColor: bgclr,
        title: Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(children: [
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 5,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                ismale = true;
                              });
                            },
                            child: Card(
                              color: ismale == true ? Colors.teal : cardclr,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.male,
                                    size: 60,
                                    color: Colors.white,
                                  ),
                                  Text("Male",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                ismale = false;
                              });
                            },
                            child: Card(
                              color: ismale == false ? Colors.teal : cardclr,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.female,
                                    size: 60,
                                    color: Colors.white,
                                  ),
                                  Text("Female",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20))
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Card(
                    color: cardclr,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Height",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  "${height.toStringAsFixed(2)}",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white),
                                ),
                                Text(
                                  "CM",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            Slider(
                              activeColor: Colors.orange,
                              inactiveColor: Colors.purple,
                              thumbColor: Colors.white,
                              value: height,
                              max: 170,
                              min: 20,
                              //label: height.round().toString(),
                              onChanged: (double value) {
                                setState(() {
                                  height = value;
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
                  flex: 5,
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Card(
                            color: cardclr,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Age",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '$age',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      child: Icon(Icons.add),
                                      style: ElevatedButton.styleFrom(
                                          shape: CircleBorder(),
                                          padding: EdgeInsets.all(17)),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      child: Icon(Icons.remove),
                                      style: ElevatedButton.styleFrom(
                                          shape: CircleBorder(),
                                          padding: EdgeInsets.all(17)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Card(
                            color: cardclr,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Weight(kg)",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20)),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '$weight',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      child: Icon(Icons.add),
                                      style: ElevatedButton.styleFrom(
                                          shape: CircleBorder(),
                                          padding: EdgeInsets.all(17)),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                      child: Icon(Icons.remove),
                                      style: ElevatedButton.styleFrom(
                                          shape: CircleBorder(),
                                          padding: EdgeInsets.all(17)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      double h = height / 100;
                      double w = weight.toDouble();
                      double hightsquare = height * height;
                      double result1 = weight / hightsquare;
                      print("Our BMI is $result1");
                    },
                    height: 100,
                    color: Color(0xff3F1052),
                    minWidth: double.infinity,
                    child: Text(
                      "Calculator",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
