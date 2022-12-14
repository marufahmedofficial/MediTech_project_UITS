import 'package:flutter/material.dart';
import 'package:meditech/pages/disease/data/constants.dart';
import 'package:meditech/pages/disease/data/tools.dart';
import 'package:meditech/pages/disease/resultsscreen.dart';

 
class DetailsScreen extends StatelessWidget {
  int index;
  DetailsScreen({required this.index,Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List resultsReferance = ["abc","abcd"];
    resultsReferance.addAll(results[index]["symptoms"]);
    return Scaffold(
      appBar: Constants.appBar,
      body: ListView.builder(itemCount: resultsReferance.length,itemBuilder: (context,i){
        if(i==0){
          return Padding(
            padding: const EdgeInsets.all(21.0),
            child: Text(results[index]["name"].toString(),style: TextStyle(fontSize: 25),),
          );
        }else if(i==1){
          return Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(results[index]["explanation"],style: TextStyle(fontSize: 15),),
          );
        }else{
          return ListTile(
            leading: Text(resultsReferance[i],style: TextStyle(fontSize: 15),),
            trailing: Tools.tickOrCross(element:resultsReferance[i])==true?Icon(Icons.check):Icon(Icons.close)
          );
        }
      })
    );
  }
}
