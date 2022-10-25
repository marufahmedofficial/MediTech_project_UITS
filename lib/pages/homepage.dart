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
            style: TextStyle(fontSize: 17),
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
        // backgroundColor: Colors.indigoAccent,
        // splashColor: Colors.purple,
        // hoverColor: Colors.orange,

        onPressed: () {},
        child: Icon(Icons.medical_information),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        elevation: 8.0,

        // // label : const Text('Change'),
        // icon: const Icon(Icons.change_circle) ,
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
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
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  Text(
                    "Shop",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  Text(
                    "Fav",
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
                name: 'BMI Calculator'
              ),_pageadd(
                 image: 'assets/images/blood-donation.png',
                name: 'Blood Bank & Donor'
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
