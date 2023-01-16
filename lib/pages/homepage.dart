import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:meditech/pages/disease/mainscreen.dart';
import 'package:meditech/pages/hospital/hospital.dart';
import 'package:meditech/pages/profile/profile_main.dart';
import 'package:meditech/pages/settings.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:share_plus/share_plus.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';
import 'about.dart';
import 'ambulance/ambulane.dart';
import 'blood/BloodHome.dart';
import 'bmi/home_screen.dart';
import 'covid19/covidmain.dart';
import 'doctors/pages/doctor_home.dart';
import 'package:animated_radial_menu/animated_radial_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Widget _pageadd1({
  //   required Color color1,
  //   required String title1,
  //   required String subtitle,
  // }) {
  //   return Container(
  //     margin: EdgeInsets.symmetric(horizontal: 10),
  //     padding: EdgeInsets.only(left: 20),
  //     height: 120,
  //     width: 240,
  //     decoration: BoxDecoration(
  //       color: color1,
  //       borderRadius: BorderRadius.circular(15.0),
  //     ),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Text(title1, style: TextStyle(
  //             fontSize: 22, color: Colors.white
  //         ),),
  //         SizedBox(
  //           height: 5,
  //         ),
  //         Text(subtitle, style: TextStyle(
  //             fontSize: 19, color: Colors.white70
  //         ),),
  //
  //       ],
  //
  //     ),
  //   );
  // }


  Widget _pageadd({
    required String image,
    required String name,
    TextStyle style = const TextStyle(
        fontSize: 16, fontWeight: FontWeight.bold, color: Colors.indigo),
  }) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width / 2,
      // decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(22.0),
      //     border: Border.all(color: Colors.deepOrange, width: 2))
      // , //grey
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
          Text(name, style: style)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                CupertinoIcons.arrow_right_arrow_left_circle_fill,
                color: Colors.white70,
                size: 30, // Change Custom Drawer Icon Color
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations
                  .of(context)
                  .openAppDrawerTooltip,
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
            borderRadius: const BorderRadius.only(
              // bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60)),
          ),
        ),
        title: const Text('MediTech'),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
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
          borderRadius: const BorderRadius.only(
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
                    areaDecoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    hourMinuteDigitTextStyle: const TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 27,
                    ),
                    amPmDigitTextStyle: const TextStyle(
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
                    image: const DecorationImage(
                        image: AssetImage('assets/images/doctor.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: 13.0),
                const Text(
                  "Maruf Ahmed",
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600),
                ),
                const Text('Meditech ',
                    style: TextStyle(color: Colors.blue, fontSize: 15.0)),
                const SizedBox(height: 27),
                InkWell(
                  onTap: (){Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileMain()));},
                  child: Row(
                    children: const [
                      Icon(
                        CupertinoIcons.profile_circled,
                        color: Colors.red,
                        size: 40,
                      ),
                      SizedBox(width: 50),
                      Text('Profile',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 17))
                    ],
                  ),
                ),
                const Divider(),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            Theme(
                              data: ThemeData.light(),
                              child: CupertinoAlertDialog(
                                title: Text(
                                  'Rating',
                                  style: boldTextStyle(size: 18),
                                ).paddingOnly(bottom: 9),
                                content: Column(
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 5,
                                      minRating: 1,
                                      itemSize: 35,
                                      direction: Axis.horizontal,
                                      itemPadding:
                                      EdgeInsets.symmetric(horizontal: 2.0),
                                      itemBuilder: (context, _) =>
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                      onRatingUpdate: (rating) {},
                                    ),
                                  ],
                                ),
                                actions: [
                                  CupertinoDialogAction(
                                    child: Text(
                                      "Cancel",
                                    ),
                                    onPressed: () {
                                      finish(context);
                                    },
                                  ),
                                  CupertinoDialogAction(
                                    child: Text('Submit'),
                                    onPressed: () {
                                      toasty(context, 'Submitted!',
                                          gravity: ToastGravity.BOTTOM_LEFT);
                                      finish(context);
                                    },
                                  )
                                ],
                              ),
                            ));
                  },
                  child: Row(
                    children: const [
                      Icon(
                        CupertinoIcons.star,
                        color: Colors.red,
                        size: 40,
                      ),
                      SizedBox(width: 50),
                      Text('Rate Us',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 17)),
                    ],
                  ),
                ),
                const Divider(),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Share.share(
                        'https://github.com/marufahmedofficial/MediTech_project_UITS');
                  },
                  child: Row(
                    children: const [
                      Icon(
                        CupertinoIcons.share,
                        color: Colors.red,
                        size: 40,
                      ),
                      SizedBox(width: 50),
                      Text('Share',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 17)),
                    ],
                  ),
                ),
                const Divider(),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children:[
                    Icon(
                      CupertinoIcons.info_circle,
                      color: Colors.red,
                      size: 40,
                    ),
                    SizedBox(width: 50),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AboutPage()));
                      },
                      child: Text('About',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 17)),
                    ),
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    showCupertinoDialog(
                        context: context,
                        builder: (context) {
                          return CupertinoAlertDialog(
                            title: Text('Exit?',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            content: Text('Do you really want to Exit?',
                                style: TextStyle(fontSize: 18)),
                            actions: [
                              CupertinoDialogAction(
                                child: Text('Cancel',
                                    style: TextStyle(fontSize: 18)),
                                onPressed: () {
                                  Navigator.pop(context); //close Dialog
                                },
                              ),
                              CupertinoDialogAction(
                                  child: Text('Yes',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.red.shade700)),
                                  onPressed: () {
                                    if (Platform.isAndroid) {
                                      SystemNavigator.pop();
                                    } else if (Platform.isIOS) {
                                      exit(0);
                                    }
                                  })
                            ],
                          );
                        });

                    // showDialog(
                    //     context: context,
                    //     builder: (context) {
                    //       return AlertDialog(
                    //         // title: Text(' Alert Dialog'),
                    //         content: const Text('Do you really want to Exit?'),
                    //         actions: <Widget>[
                    //           TextButton(
                    //               onPressed: () {
                    //                 if (Platform.isAndroid) {
                    //                   SystemNavigator.pop();
                    //                 } else if (Platform.isIOS) {
                    //                   exit(0);
                    //                 }
                    //               },
                    //               child: const Text('Yes')),
                    //           TextButton(
                    //             onPressed: () {
                    //               Navigator.pop(context); //close Dialog
                    //             },
                    //             child: const Text('No'),
                    //           ),
                    //         ],
                    //       );
                    //     });
                  },
                  child: Row(
                    children: const [
                      Icon(
                        CupertinoIcons.arrow_right_circle,
                        color: Colors.red,
                        size: 38,
                      ),
                      SizedBox(width: 50),
                      Text('Exit',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 17)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.redAccent,
        hoverColor: Colors.black54,

        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const DoctorPage()));
        },
        child: Center(
            child: Image.asset('assets/images/playstore.png')),
        // Icon(Icons.medical_information),
        // backgroundColor: Colors.deepOrange,
        backgroundColor: Colors.white,
        // foregroundColor: Colors.white,
        foregroundColor: Colors.white,
        // elevation: 8.0,
        elevation: 0,
        mouseCursor: MouseCursor.defer,

        // // label : const Text('Change'),
        // icon: const Icon(Icons.change_circle) ,
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10.0,
        shape: const CircularNotchedRectangle(),
        color: Colors.red.shade700,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            InkWell(
              onTap: () {

              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
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
              child: InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Settings()));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children:  [
                    Icon(
                      CupertinoIcons.settings,
                      color: Colors.white,
                    ),
                    Text(
                      "Setting",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // backgroundColor: Colors.white,
      body: WillPopScope(
          onWillPop: () async {
            final shouldPop = await showCupertinoModalPopup<bool>(
              context: context,
              builder: (context) {
                return CupertinoActionSheet(
                  title: Text('Do you really want to Exit?',
                      style: TextStyle(fontSize: 18,color: CupertinoColors.black)),
                  // message: Text('It\'s a demo for cupertino action sheet.'),
                  actions: [
                    CupertinoActionSheetAction(
                        onPressed: () {
                          if (Platform.isAndroid) {
                            SystemNavigator.pop();
                          } else if (Platform.isIOS) {
                            exit(0);
                          }
                        },
                        child: Text('OK', style: TextStyle(fontSize: 18,
                        color: Colors.red.shade700)))
                  ],
                  cancelButton: CupertinoActionSheetAction(
                      onPressed: () {
                        finish(context);
                      },
                      child: Text(
                        'Cancel',
                        style: primaryTextStyle(color: CupertinoColors.black, size: 18),
                      )),

                );

              },
            );
            return shouldPop!;
          },
        child: Padding(
          padding: const EdgeInsets.only(left: 30,right: 30,bottom: 30,top: 20),

          child: GridView.count(
            physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 20,
            childAspectRatio: 1.20,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                elevation: 6,
                shadowColor: CupertinoColors.systemRed,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreenBMI()));
                  },
                  mouseCursor: MouseCursor.defer,
                  splashColor: Colors.red.shade100,
                  hoverColor: Colors.grey.shade200,
                  child: _pageadd(
                      image: 'assets/images/bmi1.png', name: 'BMI Calculator'),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                elevation: 6,
                shadowColor: CupertinoColors.systemRed,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DiseaseMain()));
                  },
                  mouseCursor: MouseCursor.defer,
                  splashColor: Colors.red.shade100,
                  hoverColor: Colors.grey.shade200,
                  child: _pageadd(
                      image: 'assets/images/desease.png', name: 'Disease'),
                ),
              ),
              Card(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 6,
                shadowColor: CupertinoColors.systemRed,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CovidMain()));
                  },
                  mouseCursor: MouseCursor.defer,
                  splashColor: Colors.red.shade100,
                  hoverColor: Colors.grey.shade200,
                  child: _pageadd(
                      image: 'assets/images/covid19.png', name: 'Covid Tracker'),
                ),
              ),
              Card(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 6,
                shadowColor: CupertinoColors.systemRed,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Hospital()));
                  },
                  mouseCursor: MouseCursor.defer,
                  splashColor: Colors.red.shade100,
                  hoverColor: Colors.grey.shade200,
                  child: _pageadd(
                      image: 'assets/images/hospital.png', name: 'Hospital'),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                elevation: 6,
                shadowColor: CupertinoColors.systemRed,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  AmbulanceList()));
                  },
                  mouseCursor: MouseCursor.defer,
                  splashColor: Colors.red.shade100,
                  hoverColor: Colors.grey.shade200,
                  child: _pageadd(
                      image: 'assets/images/ambulance.png', name: 'Ambulance'),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                elevation: 6,
                shadowColor: CupertinoColors.systemRed,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DoctorPage()));
                  },
                  mouseCursor: MouseCursor.defer,
                  splashColor: Colors.red.shade100,
                  hoverColor: Colors.grey.shade200,
                  child: _pageadd(
                      image: 'assets/images/doctor.png', name: 'Doctors'),
                ),
              ),
              Card(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 6,
                shadowColor: CupertinoColors.systemRed,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  BloodHome()));
                  },
                  mouseCursor: MouseCursor.defer,
                  splashColor: Colors.red.shade100,
                  hoverColor: Colors.grey.shade200,
                  child: _pageadd(
                      image: 'assets/images/b_donation.png',
                      name: 'Blood Bank'),
                ),
              ),
              Card(
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 6,
                shadowColor: CupertinoColors.systemRed,
                child: InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) =>
                              AlertDialog(
                                backgroundColor: CupertinoColors.systemBackground,
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Hold On", style: TextStyle(fontWeight: FontWeight.bold,color:CupertinoColors.systemBlue)),
                                    SizedBox(height: 16,),
                                    Text(
                                      "Please ! Hold on.\nMore features coming  soon....",
                                      style: TextStyle(fontSize: 14,color: CupertinoColors.black),
                                    ),
                                    SizedBox(height: 16,),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                          decoration: BoxDecoration(color: CupertinoColors.systemRed, borderRadius: BorderRadius.circular(10)),
                                          padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                                          child: Text("Ok", style: TextStyle(color: Colors.white, fontSize: 16.0), ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                contentPadding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(50), bottomLeft: Radius.circular(50))),
                              ));

                    },
                  mouseCursor: MouseCursor.defer,
                  splashColor: Colors.red.shade100,
                  hoverColor: Colors.grey.shade200,
                  child: _pageadd(
                      image: 'assets/images/blood-donation.png',
                      name: 'Blood Donate'),
                ),
              ),

              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                elevation: 6,
                shadowColor: CupertinoColors.systemRed,
                child: InkWell(
                  onTap: () {
                  },
                  mouseCursor: MouseCursor.defer,
                  splashColor: Colors.red.shade100,
                  hoverColor: Colors.grey.shade200,
                  child: _pageadd(
                      image: 'assets/images/health.png', name: 'Health & Care'),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                elevation: 6,
                shadowColor: CupertinoColors.systemRed,
                child: InkWell(
                  onTap: () {},
                  mouseCursor: MouseCursor.defer,
                  splashColor: Colors.red.shade100,
                  hoverColor: Colors.grey.shade200,
                  child: _pageadd(
                      image: 'assets/images/medicine.png', name: 'Medicine'),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                elevation: 6,
                shadowColor: CupertinoColors.systemRed,
                child: InkWell(
                  onTap: () {},
                  mouseCursor: MouseCursor.defer,
                  splashColor: Colors.red.shade100,
                  hoverColor: Colors.grey.shade200,
                  child: _pageadd(
                      image: 'assets/images/calories.png', name: 'Food & Calories'),
                ),
              ),
            ],
          ),

        ),
      ),

    );


  }
}

