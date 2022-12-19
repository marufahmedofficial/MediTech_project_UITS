import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditech/pages/disease/data/constants.dart';
import 'package:meditech/pages/disease/data/tools.dart';
import 'package:meditech/pages/disease/resultsscreen.dart';
import 'package:meditech/pages/homepage.dart';

 
class DetailsScreen extends StatelessWidget {
  int index;
  DetailsScreen({required this.index,Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List resultsReferance = ["abc","abcd"];
    resultsReferance.addAll(results[index]["symptoms"]);
    return Scaffold(
      appBar: Constants.appBar,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(

          backgroundColor: Colors.indigo,
          onPressed: (){
            Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>HomePage()));
          },
            label: const Text('Back to Home'),
            icon: const Icon(CupertinoIcons.home)
        ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 70),
        child: ListView.builder(itemCount: resultsReferance.length,itemBuilder: (context,i){
          if(i==0){
            return Padding(
              padding: const EdgeInsets.all(21.0),
              child: Text(results[index]["name"].toString(),style: TextStyle(fontSize: 25,color: Colors.deepPurple),),
            );
          }else if(i==1){
            return Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(results[index]["explanation"],style: TextStyle(fontSize: 15),),
            );
          }else{
            return Card(

              child: ListTile(
                leading: Text(resultsReferance[i],style: TextStyle(fontSize: 15),),
                trailing: Tools.tickOrCross(element:resultsReferance[i])==true?Icon(Icons.check,color: Colors.green,):Icon(Icons.close,color: Colors.redAccent,)
              ),
            );
          }
        }),
      )
    );
  }
}
