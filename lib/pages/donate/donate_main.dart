import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DonatePage extends StatefulWidget {
  const DonatePage({Key? key}) : super(key: key);

  @override
  State<DonatePage> createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Donate Blood"),
        centerTitle: true,
      ),
      // body: ,
    );
  }
}
