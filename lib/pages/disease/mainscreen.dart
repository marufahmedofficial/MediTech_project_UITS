import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditech/pages/disease/data/tools.dart';
import 'package:meditech/pages/disease/symptomsscreen.dart';
import 'package:meditech/pages/homepage.dart';
 
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
      home:
      Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text("Disease Finder",style: TextStyle(color:Colors.black),),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
          floatingActionButton: Padding(
            padding: EdgeInsets.only(bottom: 9),
            child: FloatingActionButton.extended(
              label: const Text(
                'Home',
                style: TextStyle(fontSize: 13),
              ),
              // backgroundColor: Colors.black,
              icon: const Icon(
                CupertinoIcons.home,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
          ),
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
              Card(
                elevation: 4,
                child: ListTile(
                    title: Text("Let's Find my Disease"),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.red,),
                    onTap: () {
                      Navigator.of(context).push(CupertinoPageRoute(
                          builder: (context) => SymptomsScreen()));
                    }),
              ),

              Divider(
                height: 1,
                color: Colors.black26,

              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 9,top: 45,bottom: 5),
                child: Container(
                  child: Text('Important Note : This application can estimate your infection based on your symptoms but results can be false.The information in this application has been researched and collected from different sources',
                    style:TextStyle(
                      color: Colors.red.shade900
                    ) ,),
                ),
              ),

            ],

          )),

    );
  }
}
