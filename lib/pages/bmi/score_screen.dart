import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditech/pages/homepage.dart';
import 'package:pretty_gauge/pretty_gauge.dart';
import 'package:share_plus/share_plus.dart';

class ScoreScreen extends StatefulWidget {
  final double bmiScore;

  final int age;

  const ScoreScreen({Key? key, required this.bmiScore, required this.age})
      : super(key: key);

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  String? bmiStatus;

  String? bmiInterpretation;

  Color? bmiStatusColor;

  @override
  Widget build(BuildContext context) {
    setBmiInterpretation();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("BMI Score"),
      ),
      body: Container(
          padding: const EdgeInsets.all(12),
          child: Card(
              elevation: 12,
              shape: const RoundedRectangleBorder(),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Your Score",
                      style: TextStyle(fontSize: 30, color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    PrettyGauge(
                      gaugeSize: 300,
                      minValue: 0,
                      maxValue: 40,
                      segments: [
                        GaugeSegment('UnderWeight', 18.5, Colors.red),
                        GaugeSegment('Normal', 6.4, Colors.green),
                        GaugeSegment('OverWeight', 5, Colors.orange),
                        GaugeSegment('Obese', 10.1, Colors.pink),
                      ],
                      valueWidget: Text(
                        widget.bmiScore.toStringAsFixed(1),
                        style: const TextStyle(fontSize: 40),
                      ),
                      currentValue: widget.bmiScore.toDouble(),
                      needleColor: Colors.blue,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      bmiStatus!,
                      style: TextStyle(fontSize: 20, color: bmiStatusColor!),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      bmiInterpretation!,
                      style: const TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Re-calculate")),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Share.share(
                                  "Your BMI is ${widget.bmiScore.toStringAsFixed(1)} at age ${widget.age}");
                            },
                            child: const Text("Share")),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    FloatingActionButton.extended(
                      label: const Text(
                        'Home',
                        style: TextStyle(fontSize: 13),
                      ),
                      // backgroundColor: Colors.black,
                      icon: const Icon(
                        CupertinoIcons.home,
                        size: 15.0,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => const HomePage()));
                      },
                    ),
                  ]))),
    );
  }

  void setBmiInterpretation() {
    if (widget.bmiScore > 30) {
      bmiStatus = "Obese";
      bmiInterpretation = "Please work to reduce obesity";
      bmiStatusColor = Colors.pink;
    } else if (widget.bmiScore >= 25) {
      bmiStatus = "Overweight";
      bmiInterpretation = "Do regular exercise & reduce the weight";
      bmiStatusColor = Colors.orange;
    } else if (widget.bmiScore >= 18.5) {
      bmiStatus = "Normal";
      bmiInterpretation = "Enjoy, You are fit";
      bmiStatusColor = Colors.green;
    } else if (widget.bmiScore < 18.5) {
      bmiStatus = "Underweight";
      bmiInterpretation = "Try to increase the weight";
      bmiStatusColor = Colors.red;
    }
  }
}
