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
      backgroundColor: Colors.teal.shade900,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
            color: Colors.white),
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/appstore.png'),
              radius: 60.0,
            ),
            SizedBox(
              height: 20,
            ),
            Text('MediTech App',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
            SizedBox(
              height: 10,
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
              height: 27.0,
              child: Divider(
                color: Colors.indigoAccent,
                thickness: 4.0,
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
                  'Version : 1.0.5',
                  style: TextStyle(
                    fontSize: 22.0,
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
