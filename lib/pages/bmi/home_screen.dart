import 'dart:math';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

import 'age_weight_widget.dart';
import 'gender_widget.dart';
import 'height_widget.dart';
import 'score_screen.dart';

class HomeScreenBMI extends StatefulWidget {
  const HomeScreenBMI({Key? key}) : super(key: key);

  @override
  HomeScreenBMIState createState() => HomeScreenBMIState();
}

class HomeScreenBMIState extends State<HomeScreenBMI> {
  int _gender = 0;
  int _height = 150;
  int _age = 30;
  int _weight = 50;
  bool _isFinished = false;
  double _bmiScore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("BMI Calculator"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Card(
              elevation: 12,
              shape: const RoundedRectangleBorder(),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        //Lets create widget for gender selection
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30),
                          child: GenderWidget(
                            onChange: (genderVal) {
                              _gender = genderVal;
                            },
                          ),
                        ),
                        HeightWidget(
                          onChange: (heightVal) {
                            _height = heightVal;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AgeWeightWidget(
                                  onChange: (ageVal) {
                                    _age = ageVal;
                                  },
                                  title: "Age",
                                  initValue: 20,
                                  min: 0,
                                  max: 100),
                              AgeWeightWidget(
                                  onChange: (weightVal) {
                                    _weight = weightVal;
                                  },
                                  title: "Weight(Kg)",
                                  initValue: 55,
                                  min: 0,
                                  max: 200)
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 60),
                          child: SwipeableButtonView(
                              isFinished: _isFinished,
                              onFinish: () async {
                                await Navigator.push(
                                    context,
                                    PageTransition(
                                        child: ScoreScreen(
                                          bmiScore: _bmiScore,
                                          age: _age,
                                        ),
                                        type: PageTransitionType.fade));

                                setState(() {
                                  _isFinished = false;
                                });
                              },
                              onWaitingProcess: () {
                                //Calculate BMI here
                                calculateBmi();

                                Future.delayed(const Duration(seconds: 1), () {
                                  setState(() {
                                    _isFinished = true;
                                  });
                                });
                              },
                              activeColor: Colors.blue,
                              buttonWidget: const Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.black,
                              ),
                              buttonText: "CALCULATE"),
                        ),
                        const Padding(  padding: EdgeInsets.symmetric(
                            vertical: 16)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  void calculateBmi() {
    _bmiScore = _weight / pow(_height / 100, 2);
  }
}
