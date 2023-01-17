import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:url_launcher/url_launcher.dart';
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
                leading: const Icon(Icons.code,color: Colors.lightBlue,),
                title: const Text('Cheak out GitHub'),
                  onTap: () { launch('https://github.com/marufahmedofficial/MediTech_project_UITS');}
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: ListTile(
                leading: const Icon(Icons.bug_report,color: Colors.lightBlue,),
                title: const Text('Report issue on GitHub'),
                onTap: () =>
                    Navigator.of(context).pushNamed(''),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: ListTile(
                leading: const Icon(Icons.open_in_new,color: Colors.lightBlue,),
                title: const Text('Visit my website'),
                  onTap: () { launch('https://github.com/marufahmedofficial?tab=repositories');}
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: ListTile(
                leading: const Icon(Icons.shop,color: Colors.lightBlue,),
                title: const Text('Rate the app'),
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
                                          gravity: ToastGravity.CENTER);
                                      finish(context);
                                    },
                                  )
                                ],
                              ),
                            ));

                  }
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: ListTile(
                leading: const Icon(CupertinoIcons.square_grid_2x2_fill,color: Colors.lightBlue,),
                title: const Text('My Other Apps'),
                onTap: () { launch('https://github.com/marufahmedofficial?tab=repositories');}
              ),
            ),

          ],
        ),

      ),
    );

  }
}
