import 'package:flutter/material.dart';
import 'package:meditech/pages/covid19/services/repositories/countries_report_repository.dart';
import 'package:meditech/pages/covid19/services/repositories/world_report_repository.dart';
import 'package:meditech/pages/homepage.dart';
import 'package:meditech/pages/onboarding.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

var initScreen;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen =await preferences.getInt('initScreen');
  await preferences.setInt('initScreen', 1);

  // runApp(const MyApp());
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<WorldReportRepository>(
        create: (_) => WorldReportRepository(),
      ),
      ChangeNotifierProvider<CountriesReportRepository>(
        create: (_) => CountriesReportRepository(),
      )
    ],
    child: const MyApp(),
  ));
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
