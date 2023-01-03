import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  CategoryBox({ Key? key, required this.title, required this.icon, this.color}) : super(key: key);
  IconData icon;
  Color? color;
  String title;

  @override
  Widget build(BuildContext context) {
    return  
      Container(
        margin: EdgeInsets.only(right: 8),
        padding: EdgeInsets.only(top: 4, bottom: 4, left: 16, right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(1, 1), // changes position of shadow
            ),
          ],
        ),
        
        child: Column(
          children: [
            Icon(icon, size: 34, color: color,),
            SizedBox(height: 5),
            Text(title, style: TextStyle(color: color),)
          ],
        ) 
      );
  }
}