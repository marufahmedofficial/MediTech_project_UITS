import 'package:flutter/cupertino.dart';
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
      backgroundColor: Colors.white,
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/appstore.png'),
              radius: 50.0,
            ),
            SizedBox(
              height: 20,
            ),
            Text('Project MediTech',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Made with Flutter',
              style: TextStyle(
                letterSpacing: 3.0,
                color: Colors.black,
                fontSize: 14.0,
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

            ListTile(
              leading: Image(image: AssetImage('assets/images/appstore.png'),height: 70,width: 70,),
              title: const Text('MediTech Life'),
              subtitle: Text('version : 1.0.5'),
              trailing: Padding(
                padding: EdgeInsets.only(right: 25),
                child: IconButton(
                  icon: const Icon(CupertinoIcons.info_circle_fill),iconSize: 35,color: Colors.lightBlue,
                  onPressed: () {
                    showAboutDialog(
                      context: context,
                      applicationName: 'MediTech Life',
                      applicationVersion:'version : 1.0.5',
                      applicationIcon:Image(image: AssetImage('assets/images/appstore.png'),height: 70,width: 70,),
                      children: <Widget>[const Text('MediTech is a one-stop digital health service solution for the people of Bangladesh.')],
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: ListTile(
                leading: const Icon(Icons.code),

                title: const Text('Cheak out GitHub'),
                onTap: () =>
                    Navigator.of(context).pushNamed('/growth_inapp_review_ex'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: ListTile(
                leading: const Icon(Icons.bug_report),
                title: const Text('Report issue on GitHub'),
                onTap: () =>
                    Navigator.of(context).pushNamed('/growth_inapp_review_ex'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: ListTile(
                leading: const Icon(Icons.open_in_new),
                title: const Text('Visit my website'),
                onTap: () =>
                    Navigator.of(context).pushNamed('/growth_inapp_review_ex'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: ListTile(
                leading: const Icon(Icons.shop),
                title: const Text('Rate the app'),
                onTap: () =>
                    Navigator.of(context).pushNamed('/growth_inapp_review_ex'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: ListTile(
                leading: const Icon(Icons.apps),
                title: const Text('My Other Apps'),
                onTap: () => Navigator.of(context).pushNamed('/growth_my_other_apps'),
              ),
            ),

          ],
        ),

      ),
    );

  }
}
