import 'package:flutter/material.dart';

class Constants {
  static AppBar appBar = AppBar(
    automaticallyImplyLeading: false,
    leading: const BackButton(
      color: Colors.black, // <-- SEE HERE
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Text("Disease Finder",style: TextStyle(color:Colors.black),),
  );
}
