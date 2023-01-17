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
        appBar: AppBar(
          title: Text('Medicine'),
          centerTitle: true,
        ),
        body: 
        ListView(
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          children: [
            Card1(),
            Card2(),
            Card3(),

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
            padding: EdgeInsets.only(top: 80, bottom: 4, left: 6, right: 6),
            child: Column( mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center,  children: [
                Text('Antibiotics.', style: boldTextStyle(size: 20)), 8.height,
                Padding(padding: const EdgeInsets.only(left: 10,right: 8,bottom: 1),
                  child: Text('Antibiotics are used to treat or prevent some types of bacterial infection.'
                      'They work by killing bacteria or preventing them from spreading.', style: secondaryTextStyle()),
                ), 20.height,],),), Positioned(top: 2, child: Container(
              decoration: boxDecorationDefault( borderRadius: radius(16),), height: 70, width: 80,
              child: Image.asset('assets/images/antibiotics.jpg',scale: 3,)
          ,),)],),);
  }
  Widget Card2() {
    return Padding( padding: const EdgeInsets.only(top: 4,left: 8,right: 8,bottom: 12),
      child: Stack( alignment: Alignment.center, children: [
          Container(width: context.width(), decoration: boxDecorationDefault(borderRadius: radius(40), color: context.cardColor),
            padding: EdgeInsets.only(top: 80, bottom: 4, left: 6, right: 6),
            child: Column( mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center,  children: [
                Text('Hydrocodone.', style: boldTextStyle(size: 20)), 8.height,
                Padding(padding: const EdgeInsets.only(left: 10,right: 8,bottom: 1),
                  child: Text('This combination medication is used to relieve moderate to severe pain.It contains an opioid pain reliever  and a non-opioid pain reliever.', style: secondaryTextStyle()),
                ), 20.height,],),), Positioned(top: 2, child: Container(
              decoration: boxDecorationDefault( borderRadius: radius(16),), height: 70, width: 80,
              child: Image.asset('assets/images/hydrocodone.jpg',scale: 3,)
          ,),)],),);
  }
  Widget Card3() {
    return Padding( padding: const EdgeInsets.only(top: 4,left: 8,right: 8,bottom: 12),
      child: Stack( alignment: Alignment.center, children: [
          Container(width: context.width(), decoration: boxDecorationDefault(borderRadius: radius(40), color: context.cardColor),
            padding: EdgeInsets.only(top: 80, bottom: 4, left: 6, right: 6),
            child: Column( mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center,  children: [
                Text('Metformin.', style: boldTextStyle(size: 20)), 8.height,
                Padding(padding: const EdgeInsets.only(left: 10,right: 8,bottom: 1),
                  child: Text('Metformin, sold under the brand name Glucophage, among others, is the main first-line medication for the treatment of type 2 diabetes, particularly in people who are overweight.', style: secondaryTextStyle()),
                ), 20.height,],),), Positioned(top: 2, child: Container(
              decoration: boxDecorationDefault( borderRadius: radius(16),), height: 70, width: 80,
              child: Image.asset('assets/images/Metformin.jpg',scale: 3,)
          ,),)],),);
  }



}
