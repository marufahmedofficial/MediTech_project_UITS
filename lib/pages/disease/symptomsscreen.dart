import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditech/pages/disease/data/constants.dart';
import 'package:meditech/pages/disease/data/tools.dart';
import 'package:meditech/pages/disease/resultsscreen.dart';
 
class SymptomsScreen extends StatefulWidget {
  const SymptomsScreen({Key? key}) : super(key: key);

  @override
  State<SymptomsScreen> createState() => _SymptomsScreenState();
}

class _SymptomsScreenState extends State<SymptomsScreen> {
  @override
  Widget build(BuildContext context) {
    debugPrint(symptoms.length.toString());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(selectedsymptoms.isEmpty){
            showCupertinoDialog(context: context, builder: (context)=>CupertinoAlertDialog(
              title: Text("Please select a symptom that appear."),
              actions: [
                CupertinoDialogAction(child: Text("Ok"),onPressed: (){
                  Navigator.of(context).pop();
                },),
              ],
            ));
          }else{
            Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>ResultsScreen()));
          }
        },child: Icon(Icons.arrow_forward_ios),
      ),
        appBar: Constants.appBar,
        body: ListView.builder(
            itemCount: symptoms.length,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Please Select The Symptoms That Appear",
                    style: TextStyle(fontSize: 15),
                  ),
                );
              } else {
                return CheckboxListTile(
                  value: Tools.isListIncludesThis(index: index),
                  onChanged: (value) {
                    if (selectedsymptoms.contains(symptoms[index])) {
                      selectedsymptoms.remove(symptoms[index]);
                    } else {
                      selectedsymptoms.add(symptoms[index]);
                    }setState(() {

                    });
                  },
                  title: Text(symptoms[index]),
                );
              }
            }));
  }
}

List<String> symptoms = [
  "Pain",
  "Shortness of Breath",
  "Lightheadedness",
  "Nausea",
  "Weakness",
  "Difficultly with Speech",
  "Dizziness",
  "Loss of Vision",
  "Confusion",
  "Headache",
  "Fever",
  "Vomiting",
  "Mouth Sored",
  "Fluid Filled Blisters Which Scab Over",
  "Muscle Pains",
  "Diarrhea",
  "Bledding Into The Skin",
  "Cough",
  "Diminished Taste And Smell Perception",
  "Burning with Urination",
  "Dismenore",
  "Chills",
  "Sweats",
  "Fatigue",
  "Sore Throat",
  "Bloody Diarrhea",
  "Abdominal Pain",
  "Lost of Appetite",
  "Runny Nose",
  "Yellowish Skin",
  "Inflamed Eyes",
  "Rash",
  "Watery Diarrhea",
  "Muscle Cramps",
  "Blisters",
  "Cramped-up Jaw",
  "Seizures",
  "Trouble in Swallowing",
  "Skin Ulcer",
  "Lymph Nodes",
  "Cough with Bloody Mucus",
  "Weight Lose",
  "Itch",
  "Trouble Sleeping",
  "Poor Coordination",
  "Chest Pain",
  "Constipation",
  "Swollen Stomach",
  "Back Pain",
  "Neck Pain",
  "Sore Eyes",
  "Photophobia",
  "Red Eyes",
  "Pain in the Genitals",
  "Pelvic Pain",
  "Swollen Glands in the Neck",
  "Apnea",
  "Dehydration"
];
List<String> selectedsymptoms = [];


