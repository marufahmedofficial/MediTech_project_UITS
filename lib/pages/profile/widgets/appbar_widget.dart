import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    iconTheme: IconThemeData(
        color: Colors
            .black),
    leading: BackButton(),
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
}
