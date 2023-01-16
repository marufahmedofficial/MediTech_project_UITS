import 'package:flutter/material.dart';
import 'package:meditech/pages/blood/blood_mainscreen.dart';

class BloodHome extends StatefulWidget {
  const BloodHome({Key? key}) : super(key: key);

  @override
  State<BloodHome> createState() => _BloodHomeState();
}

class _BloodHomeState extends State<BloodHome> {


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
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22.0),
          border: Border.all(color: Colors.deepOrange, width: 2))
      , //grey
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
        centerTitle: true,
        title: Text('Blood Bank'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30 ,bottom: 20,top: 14),

        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 15,
          childAspectRatio: 1.20,
          children: [
            InkWell(
              onTap: () { Navigator.push( context, MaterialPageRoute(
                        builder: (context) => BloodMain()));
              },
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/uits.png', name: 'UITS'),
            ), InkWell(
              onTap: () { Navigator.push( context, MaterialPageRoute(
                        builder: (context) => BloodMain()));
              },
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/redc.png', name: 'Red Crescent'),
            ), InkWell(
              onTap: () {
              },
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/policeb.jpg', name: 'Ploice Bank'),
            ), InkWell(
              onTap: () {
              },
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/quantam.png', name: 'Quantum Lab'),
            ), InkWell(
              onTap: () {
              },
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/badhan.png', name: 'Badhan Bank'),
            ), InkWell(
              onTap: () {
              },
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/alifb.jpg', name: 'Alif Bank'),
            ), InkWell(
              onTap: () {
              },
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/sandhani.png', name: 'Sandhani'),
            ), InkWell(
              onTap: () {
              },
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/mukti.jpg', name: 'Mukti Bank'),
            ),InkWell(
              onTap: () {
              },
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/islami.jpg', name: 'Islami Bank'),
            ),InkWell(
              onTap: () {
              },
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/ssmc.jpg', name: 'SSMC Bank'),
            ),InkWell(
              onTap: () {
              },
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/retina.jpg', name: 'Retina Bank'),
            ),

          ],
        ),

      ),

    );


  }
}

