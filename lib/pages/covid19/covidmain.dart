import 'package:flutter/material.dart';

import 'screens/search_country_screen.dart';
import 'screens/world_stats_screen.dart';
import 'utils/constants.dart';
import 'utils/theme_constants.dart';


class CovidMain extends StatefulWidget {
  const CovidMain({Key? key}) : super(key: key);

  @override
  State<CovidMain> createState() => _CovidMainState();
}

class _CovidMainState extends State<CovidMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid19 Tracker',
      debugShowCheckedModeBanner: false,
      theme: covidTheme,
      routes: {
        MyRoutes.kHome: (_) => const WorldStatsScreen(),
        // MyRoutes.kSplashScreen: (_) => const SplashScreen(),
        MyRoutes.kSearchCountryScreen: (_) => const SearchCountryScreen(),
      },
      initialRoute: MyRoutes.kSplashScreen,
    );
  }
}
