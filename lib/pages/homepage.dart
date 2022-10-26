import 'package:flutter/material.dart';

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
                BoxDecoration(image: DecorationImage(image: AssetImage(image))),
          ),
          SizedBox(
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
        title: const Text('MediTech'),
        centerTitle: true,
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
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10.0,
        shape: CircularNotchedRectangle(),
        color: Colors.deepOrange,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
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
            Padding(
              padding:
              const EdgeInsets.only(right: 20.0, top: 10.0, bottom: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.bloodtype_sharp,
                    color: Colors.white,
                  ),
                  Text(
                    "Blood",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: 25.0, top: 10.0, bottom: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.perm_contact_calendar_sharp,
                    color: Colors.white,
                  ),
                  Text(
                    "INFO",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
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
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 20,
            childAspectRatio: 1.30,
            children: [
              _pageadd(
                 image: 'assets/images/bmi1.png',
                name: 'BMI Calculator,'
              ),_pageadd(
                 image: 'assets/images/blood-donation.png',
                name: 'Blood Bank'
              ),_pageadd(
                 image: 'assets/images/ambulance.png',
                name: 'Ambulance'
              ),_pageadd(
                 image: 'assets/images/health.png',
                name: 'Health & Care'
              ),_pageadd(
                 image: 'assets/images/doctor.png',
                name: 'Doctors'
              ),_pageadd(
                 image: 'assets/images/hospital.png',
                name: 'Hospital'
              ),

            ],
          ),
        ),
      ),
    );
  }
}
