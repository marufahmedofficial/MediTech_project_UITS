import 'package:flutter/material.dart';

import 'homepage.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
            color: Colors.black),
        leading: BackButton(
          onPressed:(){Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomePage()));},
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/appstore.png'),
              radius: 70.0,
            ),
            Text('MediTech App',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
            Text(
              'Made with Flutter',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              width: 300.0,
              height: 20.0,
              child: Divider(
                color: Colors.white,
                thickness: 5.0,
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 15.0,horizontal: 30.0),
              child: ListTile(
                leading:  Icon(
                  Icons.android,
                  color: Colors.teal,
                  size: 30.0,
                ),
                title: Text(
                  'Version : 1.0.0',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 30.0),
              child: ListTile(
                leading:  Icon(
                  Icons.email,
                  color: Colors.teal,
                  size: 30.0,
                ),
                title: Text(
                  'maruf.c.uits@gmail.com',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

          ],
        ),

      ),
    );

  }
}
