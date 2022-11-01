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
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(image), fit: BoxFit.contain),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.indigo.shade900),
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
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepOrange, Colors.redAccent.shade400],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
            borderRadius: BorderRadius.only(
                // bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60)),
          ),
        ),
        title: const Text('MediTech'),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              // bottomLeft: Radius.circular(60),
              bottomRight: Radius.circular((60))),
        ),
      ),
      drawer: (Container(
        height: MediaQuery.of(context).size.height * 0.94,
        // width: MediaQuery.of(context).size.width,

        clipBehavior: Clip.antiAliasWithSaveLayer,
        padding: const EdgeInsets.only(left: 16.0, right: 40),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey.shade200,
            width: 1,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
          borderRadius: BorderRadius.only(
            topRight: Radius.elliptical(170.0, 400.0),
            bottomRight: Radius.elliptical(190.0, 400.0),
          ),
        ),
        width: 280,

        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(height: 32.0),
                Container(
                  height: 90,
                  width: 90,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Colors.deepOrange),
                    image: DecorationImage(
                        image: AssetImage('assets/images/doctor.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: 13.0),
                Text(
                  "Maruf Ahmed",
                  style: const TextStyle(
                      color: Colors.black45,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600),
                ),
                Text('Maruf 2',
                    style: TextStyle(color: Colors.blue, fontSize: 16.0)),
                const SizedBox(height: 27),
                Row(
                  children: [
                    Icon(
                      Icons.account_circle_outlined,
                      color: Colors.red,
                      size: 40,
                    ),
                    SizedBox(width: 50),
                    Text('Profile',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17 ))
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.red,
                      size: 40,
                    ),
                    SizedBox(width: 50),
                    Text('Rate Us',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17 )),
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.share_rounded,
                      color: Colors.red,
                      size: 40,
                    ),
                    SizedBox(width: 50),
                    Text('Share',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17 )),
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.info_rounded,
                      color: Colors.red,
                      size: 40,
                    ),
                    SizedBox(width: 50),
                    Text('About',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17 )),
                  ],
                ),
                const Divider(),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.exit_to_app_rounded,
                      color: Colors.red,
                      size: 38,
                    ),
                    const SizedBox(width: 50),
                    Text('Exit',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17 )),
                  ],
                )
              ],
            ),
          ),
        ),
      )),
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
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => BMI()));
              },
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/bmi1.png', name: 'BMI Calculator'),
            ),
            InkWell(
              onTap: () {},
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/blood-donation.png',
                  name: 'Blood Bank'),
            ),
            InkWell(
              onTap: () {},
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/ambulance.png', name: 'Ambulance'),
            ),
            InkWell(
              onTap: () {},
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/health.png', name: 'Health & Care'),
            ),
            InkWell(
              onTap: () {},
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: InkWell(
                onTap: () {},
                mouseCursor: MouseCursor.defer,
                splashColor: Colors.red.shade100,
                hoverColor: Colors.grey.shade200,
                child: _pageadd(
                    image: 'assets/images/doctor.png', name: 'Doctors'),
              ),
            ),
            InkWell(
              onTap: () {},
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/hospital.png', name: 'Hospital'),
            ),
            InkWell(
              onTap: () {},
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/medicine.png', name: 'Medicine'),
            ),
            InkWell(
              onTap: () {},
              mouseCursor: MouseCursor.defer,
              splashColor: Colors.red.shade100,
              hoverColor: Colors.grey.shade200,
              child: _pageadd(
                  image: 'assets/images/calories.png', name: 'Food & Calories'),
            ),
          ],
        ),
      ),
    );
  }
}
