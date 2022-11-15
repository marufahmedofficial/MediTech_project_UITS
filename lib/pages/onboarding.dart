import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'homepage.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }



  Widget _buildImage(String assetName, [double width = 220]) {
    return Image.asset('assets/images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.white,
           elevation: 0,
           actions: [
             TextButton(onPressed: (){
               Navigator.push(
                   context,
                   CupertinoPageRoute(
                       builder: (context) => const HomePage()));
             }, child: Text('Skip'))
           ],
         ),
      body: IntroductionScreen(
        key: introKey,
        globalBackgroundColor: Colors.white,

        globalFooter: SizedBox(
          width: double.infinity,
          height: 30,
        ),
        pages: [
          PageViewModel(
            title: "BMI Calculating",
            body:
            "Easily Calculate Body Mass Index (BMI) which is a simple calculation using a person's height and weight.",
            image: _buildImage('bmi1.png'),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Desease Finder",
            body:
            "Finds your disease according to your symptoms.",
            image: _buildImage('desease.png'),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Connect with Doctors",
            body:
            "Cummunicate and connect with doctor from anytime and anywhere.",
            image: _buildImage('doctor.png'),
            decoration: pageDecoration,
          ),


        ],
        onDone: () => _onIntroEnd(context),
        onSkip: () => _onIntroEnd(context),
        showSkipButton: false,
        skipOrBackFlex: 0,
        nextFlex: 0,
        showBackButton: true,
        // rtl: true, // Display as right-to-left
        back: const Icon(CupertinoIcons.back),
        skip:  Text('Skip'),
        next: const Icon(CupertinoIcons.right_chevron),
        done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
        curve: Curves.fastLinearToSlowEaseIn,
        controlsMargin: const EdgeInsets.all(16),
        controlsPadding: kIsWeb
            ? const EdgeInsets.all(12.0)
            : const EdgeInsets.fromLTRB(8.0, 12.0, 8.0, 1.0),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          color: Colors.red,
          activeSize: Size(22.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),

      ),
    );
  }
}