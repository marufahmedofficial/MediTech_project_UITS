import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MediTech'),
          centerTitle: true,
        ),
      floatingActionButton: FloatingActionButton(
        // backgroundColor: Colors.indigoAccent,
        // splashColor: Colors.purple,
        // hoverColor: Colors.orange,

        onPressed: (){},
        child: Icon(Icons.medical_information),
        backgroundColor: Colors.red.shade700,
        foregroundColor: Colors.white,
        elevation: 10.0,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide()
        ),


        // // label : const Text('Change'),
        // icon: const Icon(Icons.change_circle) ,
      ),
      body: Center(
        child: Text('This project is successfully running..'),
      ),


    );
  }
}
