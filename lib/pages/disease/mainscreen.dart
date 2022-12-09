import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditech/pages/disease/data/tools.dart';
import 'package:meditech/pages/disease/symptomsscreen.dart';

import 'data/constants.dart';
 
class DiseaseMain extends StatefulWidget {
  const DiseaseMain({Key? key}) : super(key: key);

  @override
  State<DiseaseMain> createState() => _DiseaseMainState();
}

class _DiseaseMainState extends State<DiseaseMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: Constants.appBar,
          body: ListView(
            children: [
              Divider(
                height: 50,
                color: Colors.transparent,
              ),
              Center(
                child: CircleAvatar(
                  foregroundColor: Colors.transparent,
                  backgroundImage: Tools.returnImage(),
                  backgroundColor: Colors.white,
                  radius: 100,
                  child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Divider(
                        height: 50,
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:  30,bottom: 30),
                child: Center(
                  child: Column( children: [
                    Text(
                      Tools.returnTime(),
                      style: TextStyle(color: Colors.black),
                    ),
                  ],

                  ),
                ),
              ),
              Divider(
                height: 15,
                color: Colors.black26,
              ),
              ListTile(
                  title: Text("Let's Find A Disease"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.of(context).push(CupertinoPageRoute(
                        builder: (context) => SymptomsScreen()));
                  }),
              Divider(
                height: 2,
                color: Colors.black26,
                
              )
            ],
          )),
    );
  }
}
