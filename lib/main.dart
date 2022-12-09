import 'package:flutter/material.dart';
import 'package:meditech/pages/homepage.dart';
import 'package:meditech/pages/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

var initScreen;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen =await preferences.getInt('initScreen');
  await preferences.setInt('initScreen', 1);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MediTech Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),

      initialRoute: initScreen == 0 || initScreen == null ? 'OnBoardingPage' : 'HomePage',
      routes: {
        'HomePage' : (context) => HomePage(),
        'OnBoardingPage' : (context) => OnBoardingPage(),
      } ,
      // home: OnBoardingPage(),
    );
  }
}
