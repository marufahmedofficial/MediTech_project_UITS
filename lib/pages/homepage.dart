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
          border: Border.all(color: Colors.grey, width: 2)),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        // backgroundColor: Colors.indigoAccent,
        // splashColor: Colors.purple,
        // hoverColor: Colors.orange,

        onPressed: () {},
        child: Icon(Icons.medical_information),
        backgroundColor: Colors.red.shade700,
        foregroundColor: Colors.white,
        elevation: 10.0,

        // // label : const Text('Change'),
        // icon: const Icon(Icons.change_circle) ,
      ),
      body: Container(
        child: Container(
          // height: 800,
          // width: double.infinity,
          // // decoration: BoxDecoration(
          // //     color: Colors.white,
          // //     borderRadius: BorderRadius.only(
          // //       topLeft: Radius.circular(30),
          // //       topRight: Radius.circular(30),
          // //     )
          // // ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 8,
                childAspectRatio: 1.30,
                children: [
                  _pageadd(
                     image: 'images/icon.png',
                    name: 'Organization'
                  ),_pageadd(
                     image: 'images/icon.png',
                    name: 'Organization'
                  ),_pageadd(
                     image: 'images/icon.png',
                    name: 'Organization'
                  ),_pageadd(
                     image: 'images/icon.png',
                    name: 'Organization'
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
