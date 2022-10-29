import 'package:flutter/material.dart';
import 'package:meditech/pages/bmi.dart';

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
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(image),fit: BoxFit.contain),

                ),
          ),
         const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.indigo.shade900),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        shadowColor: Colors.blueAccent,
        flexibleSpace:
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.deepOrange,Colors.redAccent.shade200],
                begin: Alignment.bottomRight,
                end : Alignment.topLeft,
              ),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),bottomRight: Radius.circular(80)
              ),

          ),
        ),
        title: const Text('MediTech'),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80),bottomRight: Radius.circular((80))),
        ),
      ),
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
      bottomNavigationBar:BottomAppBar(
        notchMargin: 10.0,
        shape: CircularNotchedRectangle(),
        color: Colors.deepOrange,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [

            InkWell(
              onTap: () {

              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10),
                child: Column(

                  mainAxisSize: MainAxisSize.min,
                  children: [

                    Icon(
                      Icons.home,
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
                    Icons.settings,
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => BMI()));
              },
              mouseCursor: MouseCursor.defer,
             splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                 image: 'assets/images/bmi1.png',
                name: 'BMI Calculator'
              ),
            ),InkWell(onTap: () { },
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                 image: 'assets/images/blood-donation.png',
                name: 'Blood Bank'
              ),
            ),InkWell(
              onTap: () { },
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                 image: 'assets/images/ambulance.png',
                name: 'Ambulance'
              ),
            ),InkWell(
              onTap: () { },
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                 image: 'assets/images/health.png',
                name: 'Health & Care'
              ),
            ),InkWell(
              onTap: () { },
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: InkWell(onTap: () { },
                mouseCursor: MouseCursor.defer,
                splashColor: Colors.red.shade100,
                hoverColor: Colors.grey.shade200,
                child: _pageadd(
                   image: 'assets/images/doctor.png',
                  name: 'Doctors'
                ),
              ),
            ),
            InkWell(onTap: () { },
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                 image: 'assets/images/hospital.png',
                name: 'Hospital'
              ),
            ),
            InkWell(onTap: () { },
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                 image: 'assets/images/medicine.png',
                name: 'Medicine'
              ),
            ), InkWell(onTap: () { },
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                 image: 'assets/images/calories.png',
                name: 'Food & Calories'
              ),
            ),


          ],
        ),
      ),
    );
  }
}
