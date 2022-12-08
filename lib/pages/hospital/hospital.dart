import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';


class Hospital extends StatefulWidget {




  @override
  HospitalState createState() => HospitalState();
}

class HospitalState extends State<Hospital> {


  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {

  }

  int segmentedControlGroupValue = 0;
  final Map<int, Widget> myTabs = <int, Widget>{0: Text("Item 1"), 1: Text("Item 2")};
  int? _sliding = 0;

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    Widget mPage1(var value) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(value,
            style: boldTextStyle(),
          ).paddingLeft(16),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 16),
            child: Text('Maruf Ahmed',
              style: secondaryTextStyle(),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      );
    }
    Widget mPage2(var value) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(value,
            style: boldTextStyle(),
          ).paddingLeft(16),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 16),
            child: Text('Maruf',
              style: secondaryTextStyle(),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      );
    }
    Widget mPage3(var value) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(value,
            style: boldTextStyle(),
          ).paddingLeft(16),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 16),
            child: Text('Ahmed',
              style: secondaryTextStyle(),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      );
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black, // <-- SEE HERE
          ),
          centerTitle: true,
          title: const Text("Hospitals",style: TextStyle(color: Colors.black),),
          backgroundColor: CupertinoColors.systemBackground,
        ),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(16.0),
              child: CupertinoSlidingSegmentedControl(
                  children: {
                    0: Container(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'Government',
                          style: primaryTextStyle(color: _sliding == 0 ? blackColor : grey),
                        )),
                    1: Container(padding: EdgeInsets.all(8), child: Text('Private', style: primaryTextStyle(color: _sliding == 1 ? blackColor : grey))),
                    2: Container(padding: EdgeInsets.all(8), child: Text('Covid', style: primaryTextStyle(color: _sliding == 2 ? blackColor : grey))),
                  },
                  groupValue: _sliding,
                  onValueChanged: (dynamic newValue) {
                    setState(() {
                      _sliding = newValue;
                    });
                  }),
            ),
            if (_sliding == 0) mPage1("Government"),
            if (_sliding == 1) mPage2("Private"),
            if (_sliding == 2) mPage3("Covid"),
          ],
        ),
      ),
    );
  }
}

