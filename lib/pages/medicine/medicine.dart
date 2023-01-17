import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
class MedicineHome extends StatefulWidget {

  @override
  MedicineHomeState createState() => MedicineHomeState();
}

class MedicineHomeState extends State<MedicineHome> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          children: [
            Card1(),
            Card2(),
            10.height,
          ],
        ),
      ),
    );
  }

  Widget Card1() {
    return Padding( padding: const EdgeInsets.only(top: 4,left: 8,right: 8,bottom: 12),
      child: Stack( alignment: Alignment.center, children: [
          Container(width: context.width(), decoration: boxDecorationDefault(borderRadius: radius(40), color: context.cardColor),
            padding: EdgeInsets.only(top: 80, bottom: 16, left: 6, right: 6),
            child: Column( mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center,  children: [
                Text('Tesla Inc.', style: boldTextStyle(size: 20)), 8.height,
                Text('last update Aug 14, 6 PM', style: secondaryTextStyle()), 20.height,],),), Positioned(top: 2, child: Container(
              decoration: boxDecorationDefault( borderRadius: radius(16),), height: 70, width: 80,
              child: Icon(Icons.title, size: 50, color: Colors.red),),)],),);
  }

}

AppStore appStore = AppStore();
class AppStore{

  Color textPrimaryColor = Color(0xFF212121);
  Color iconColorPrimaryDark = Color(0xFF212121);
  Color scaffoldBackground = Color(0xFFEBF2F7);
  Color backgroundColor = Colors.black;
  Color backgroundSecondaryColor = Color(0xFF131d25);
  Color appColorPrimaryLightColor = Color(0xFFF9FAFF);
  Color textSecondaryColor = Color(0xFF5A5C5E);
  Color appBarColor = Colors.white;
  Color iconColor = Color(0xFF212121);
  Color iconSecondaryColor = Color(0xFFA8ABAD);
  Color cardColor = Colors.white;
  Color appColorPrimary = Color(0xFF1157FA);
  Color scaffoldBackgroundColor = Color(0xFFEFEFEF);

  AppStore();

}