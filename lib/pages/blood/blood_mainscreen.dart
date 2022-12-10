import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class BloodMain extends StatefulWidget {
  const BloodMain({Key? key}) : super(key: key);

  @override
  State<BloodMain> createState() => _BloodMainState();
}

class _BloodMainState extends State<BloodMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blood Bank"),
        centerTitle: true,
      ),
      // body: ,
    );
  }
}
