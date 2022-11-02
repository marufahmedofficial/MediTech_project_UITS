import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

import 'bmi/home_screen.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _pageadd({
    required String image,
    required String name,
  }) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.deepOrange, width: 2)), //grey
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(image), fit: BoxFit.contain),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.indigo.shade900),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                CupertinoIcons.arrow_right_arrow_left_circle_fill,
                color: Colors.white70,
                size: 30,// Change Custom Drawer Icon Color
              ),

              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        elevation: 10,
        shadowColor: Colors.blueAccent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepOrange.shade400, Colors.redAccent.shade700],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
            borderRadius: BorderRadius.only(
              // bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60)),
          ),
        ),
        title: const Text('MediTech'),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            // bottomLeft: Radius.circular(60),
              bottomRight: Radius.circular((60))),
        ),
      ),
      drawer: (Container(
        height: MediaQuery
            .of(context)
            .size
            .height * 0.94,
        // width: MediaQuery.of(context).size.width,

        clipBehavior: Clip.antiAliasWithSaveLayer,
        padding: const EdgeInsets.only(left: 16.0, right: 40),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey.shade200,
            width: 1,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
          borderRadius: BorderRadius.only(
            topRight: Radius.elliptical(170.0, 400.0),
            bottomRight: Radius.elliptical(190.0, 400.0),
          ),
        ),
        width: 280,

        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 15.0),
                Padding(
                  padding: const EdgeInsets.only(right: 55),
                  child: DigitalClock(
                    digitAnimationStyle: Curves.linear,
                    is24HourTimeFormat: false,
                    areaDecoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    hourMinuteDigitTextStyle: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 27,
                    ),
                    amPmDigitTextStyle: TextStyle(
                        color: Colors.blueGrey, fontWeight: FontWeight.bold),
                  ),
                ),
                // const Icon(
                //   CupertinoIcons.clock,
                //   color: Colors.grey,
                // ),
                const SizedBox(height: 15.0),
                Container(
                  height: 90,
                  width: 90,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Colors.deepOrange),
                    image: DecorationImage(
                        image: AssetImage('assets/images/doctor.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: 13.0),
                Text(
                  "Maruf Ahmed",
                  style: const TextStyle(
                      color: Colors.black45,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600),
                ),
                Text('Meditech ',
                    style: TextStyle(color: Colors.blue, fontSize: 15.0)),
                const SizedBox(height: 27),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.profile_circled,
                      color: Colors.red,
                      size: 40,
                    ),
                    SizedBox(width: 50),
                    Text('Profile', style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 17))
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.star,
                      color: Colors.red,
                      size: 40,
                    ),
                    SizedBox(width: 50),
                    Text('Rate Us', style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 17)),
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.share,
                      color: Colors.red,
                      size: 40,
                    ),
                    SizedBox(width: 50),
                    Text('Share', style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 17)),
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.info_circle,
                      color: Colors.red,
                      size: 40,
                    ),
                    SizedBox(width: 50),
                    Text('About', style: TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 17)),
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            // title: Text(' Alert Dialog'),
                            content: Text('Do you really want to Exit?'),
                            actions: <Widget>[
                              TextButton(
                                  onPressed: () {
                                    if (Platform.isAndroid) {
                                      SystemNavigator.pop();
                                    } else if (Platform.isIOS) {
                                      exit(0);
                                    }
                                  },
                                  child: Text('Yes')),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context); //close Dialog
                                },
                                child: Text('No'),
                              ),
                            ],
                          );
                        });
                  },
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.arrow_right_circle,
                        color: Colors.red,
                        size: 38,
                      ),
                      const SizedBox(width: 50),
                      Text('Exit', style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 17)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.purple,
        hoverColor: Colors.black54,

        onPressed: () {},
        child: Icon(Icons.medical_information),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        elevation: 8.0,
        mouseCursor: MouseCursor.defer,

        // // label : const Text('Change'),
        // icon: const Icon(Icons.change_circle) ,
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10.0,
        shape: CircularNotchedRectangle(),

        color: Colors.red.shade700,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      CupertinoIcons.home,
                      color: Colors.white,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Container(height: 55.0),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    CupertinoIcons.settings,
                    color: Colors.white,
                  ),
                  Text(
                    "Setting",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),

      // backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 20,
          childAspectRatio: 1.30,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/bmi1.png', name: 'BMI Calculator'),
            ),
            InkWell(
              onTap: () {},
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/blood-donation.png',
                  name: 'Blood Bank'),
            ),
            InkWell(
              onTap: () {},
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/ambulance.png', name: 'Ambulance'),
            ),
            InkWell(
              onTap: () {},
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/health.png', name: 'Health & Care'),
            ),
            InkWell(
              onTap: () {},
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: InkWell(
                onTap: () {},
                mouseCursor: MouseCursor.defer,
                splashColor: Colors.red.shade100,
                hoverColor: Colors.grey.shade200,
                child: _pageadd(
                    image: 'assets/images/doctor.png', name: 'Doctors'),
              ),
            ),
            InkWell(
              onTap: () {},
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/hospital.png', name: 'Hospital'),
            ),
            InkWell(
              onTap: () {},
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/medicine.png', name: 'Medicine'),
            ),
            InkWell(
              onTap: () {},
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/calories.png', name: 'Food & Calories'),
            ),
          ],
        ),

      ),
    );
  }
}
