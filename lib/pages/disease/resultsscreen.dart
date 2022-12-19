import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditech/pages/disease/data/constants.dart';
import 'package:meditech/pages/disease/data/tools.dart';
import 'package:meditech/pages/disease/detailsscreen.dart';
import 'package:meditech/pages/disease/symptomsscreen.dart';

 
class ResultsScreen extends StatefulWidget {
  const ResultsScreen({Key? key}) : super(key: key);

  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  List<Map<String, dynamic>> mainResults = [
    {
      "name": "Smallpox",
      "explanation":
          "Smallpox is an acute contagious disease caused by the variola virus, a member of the orthopoxvirus family. It was one of the most devastating diseases known to humanity and caused millions of deaths before it was eradicated. It is believed to have existed for at least 3000 years. The smallpox vaccine, created by Edward Jenner in 1796, was the first successful vaccine to be developed.",
      "symptoms": [
        "Fever",
        "Fatigue",
        "Back Pain",
        "Abdominal Pain",
        "Fluid Filled Blisters Which Scab Over",
      ],
      "percent": Tools.calculatePercent(realSymptoms: [
        "Fever",
        "Fatigue",
        "Back Pain",
        "Abdominal Pain",
        "Fluid Filled Blisters Which Scab Over",
      ])
    },
    {
      "name": "Crimean–Congo Hemorrhagic Fever",
      "explanation":
          "Crimean-Congo haemorrhagic fever (CCHF) is a widespread disease caused by a tick-borne virus (Nairovirus) of the Bunyaviridae family. The CCHF virus causes severe viral haemorrhagic fever outbreaks, with a case fatality rate of 10% - 40%. CCHF is endemic in Africa, the Balkans, the Middle East and Asian countries south of the 50 th parallel north – the geographical limit of the principal tick vector. ",
      "symptoms": [
        "Fever",
        "Vomiting",
        "Muscle Pains",
        "Dizziness",
        "Neck Pain",
        "Back Pain",
        "Sore Eyes",
        "Nausea",
        "Vomiting",
        "Diarrhea",
        "Abdominal Pain",
        "Sore Throat",
        "Fluid Filled Blisters Which Scab Over"
      ],
      "percent": Tools.calculatePercent(realSymptoms: [
        "Fever",
        "Vomiting",
        "Muscle Pains",
        "Dizziness",
        "Neck Pain",
        "Back Pain",
        "Sore Eyes",
        "Nausea",
        "Vomiting",
        "Diarrhea",
        "Abdominal Pain",
        "Sore Throat",
        "Fluid Filled Blisters Which Scab Over"
      ])
    },
    {
      "name": "COVID-19",
      "explanation":
          "Coronavirus disease in other words 'COVID-19' is an infectious disease caused by the SARS-CoV-2 virus. Most people infected with the virus will experience mild to moderate respiratory illness and recover without requiring special treatment. However, some will become seriously ill and require medical attention. Older people and those with underlying medical conditions like cardiovascular disease, diabetes, chronic respiratory disease, or cancer are more likely to develop serious illness. Anyone can get sick with COVID-19 and become seriously ill or die at any age. ",
      "symptoms": [
        "Fever",
        "Cough",
        "Diminished Taste And Smell Perception",
        "Fatigue",
        "Sore Throat",
        "Headache",
        "Pain",
        "Diarrhea",
        "Rash",
        "Red Eyes",
        "Confusion",
        "Chest Pain",
        "Shortness of Breath"
      ],
      "percent": Tools.calculatePercent(realSymptoms: [
        "Fever",
        "Cough",
        "Diminished Taste And Smell Perception",
        "Fatigue",
        "Sore Throat",
        "Headache",
        "Pain",
        "Diarrhea",
        "Rash",
        "Red Eyes",
        "Confusion",
        "Chest Pain",
        "Shortness of Breath"
      ])
    },
    {
      "name": "Gonorrhoeae",
      "explanation":
          "Gonorrhea, in other words 'The Clap', is a sexually transmitted infection caused by the bacterium Neisseria gonorrhoeae.",
      "symptoms": ["Burning with Urination", "Dismenore","Pain in the Genitals","Pelvic Pain"],
      "percent": Tools.calculatePercent(
          realSymptoms: ["Burning with Urination", "Dismenore","Pain in the Genitals","Pelvic Pain"])
    },
    {
      "name": "Brucellosis",
      "explanation":
          "Brucellosis is a highly contagious zoonosis caused by ingestion of unpasteurized milk or undercooked meat from infected animals, or close contact with infected animals. It is also known as 'Undulant fever', 'Malta fever' or 'Mediterranean fever'.",
      "symptoms": [
        "Fever",
        "Chills",
        "Lost of Appetite",
        "Sweats",
        "Weakness",
        "Fatigue",
        "Headache",
      ],
      "percent": Tools.calculatePercent(realSymptoms: [
        "Fever",
        "Chills",
        "Lost of Appetite",
        "Sweats",
        "Weakness",
        "Fatigue",
        "Headache",
      ])
    },
    {
      "name": "Diphtheria",
      "explanation":
          "Diphtheria is an infection caused by the bacterium Corynebacterium Diphtheriae. Most infections are asymptomatic or have a mild clinical course, but in some outbreaks more than 10% of those diagnosed with the disease may die.",
      "symptoms": ["Sore Throat", "Fever", "Cough","Swollen Glands in the Neck"],
      "percent": Tools.calculatePercent(
          realSymptoms: ["Sore Throat", "Fever", "Cough","Swollen Glands in the Neck"])
    },
    {
      "name": "Dysentery",
      "explanation":
          "Dysentery , historically known as 'The Bloody Flux'.Dysentery is a type of gastroenteritis that results in bloody diarrhea.",
      "symptoms": ["Bloody Diarrhea", "Abdominal Pain", "Fever"],
      "percent": Tools.calculatePercent(
        realSymptoms: ["Bloody Diarrhea", "Abdominal Pain", "Fever"],
      )
    },
    {
      "name": "Influenza",
      "explanation":
          "Influenza, commonly known as 'The Flu'. Influeanza Viruses caused 'The Flu'. These symptoms begin from one to four days after exposure to the virus and last for about 2 - 8 days. ",
      "symptoms": [
        "Fever",
        "Runny Nose",
        "Sore Throat",
        "Muscle Pains",
        "Headache",
        "Cough",
        "Fatigue"
      ],
      "percent": Tools.calculatePercent(realSymptoms: [
        "Fever",
        "Runny Nose",
        "Sore Throat",
        "Muscle Pains",
        "Headache",
        "Cough",
        "Fatigue"
      ])
    },
    {
      "name": "Hepatitis",
      "explanation":
          "Hepatitis is inflammation of the liver tissue. Hepatitis is acute if it resolves within six months, and chronic if it lasts longer than six months",
      "symptoms": [ 
       "Yellowish Skin",
        "Lost of Appetite",
        "Abdominal Pain"],
      "percent": Tools.calculatePercent(realSymptoms: [
        "Yellowish Skin",
        "Lost of Appetite",
        "Abdominal Pain"
      ])
    },
    {
      "name": "Measles",
      "explanation":
          "Measles is a highly contagious infectious disease caused by measles virus. Symptoms usually develop 10 – 12 days after exposure to an infected person and last 7–10 days.",
      "symptoms": ["Fever", "Cough", "Runny Nose", "Inflamed Eyes", "Rash"],
      "percent": Tools.calculatePercent(realSymptoms: [
        "Fever",
        "Cough",
        "Runny Nose",
        "Inflamed Eyes",
        "Rash"
      ])
    },
    {
      "name": "Cholera",
      "explanation":
          "Cholera is an infection of the small intestine by some strains of the bacterium 'Vibrio cholerae'. Symptoms may range from none, to mild, to severe.",
      "symptoms": ["Watery Diarrhea", "Vomiting", "Muscle Cramps","Dehydration"],
      "percent": Tools.calculatePercent(
          realSymptoms: ["Watery Diarrhea", "Vomiting", "Muscle Cramps"])
    },
    {
      "name": "Malaria",
      "explanation":
          "Malaria is a mosquito-borne infectious disease that affects humans and other animals. In severe cases, it can cause jaundice, seizures, coma, or death. Symptoms usually begin 10-15 days after being bitten by an infected mosquito.",
      "symptoms": [
        "Fever",
        "Vomiting",
        "Chills",
        "Headache",
        "Yellowish Skin",
      ],
      "percent": Tools.calculatePercent(realSymptoms: [
        "Fever",
        "Vomiting",
                "Chills",
        "Headache",
        "Yellowish Skin",
      ])
    },
    {
      "name": "Chickenpox",
      "explanation":
          "Chickenpox, also known as varicella, is a highly contagious disease caused by the initial infection with 'Varicella Zoster Virus' (VZV).",
      "symptoms": [
        "Blisters",
        "Headache",
        "Lost of Appetite",
        "Fatigue",
        "Fever"
      ],
      "percent": Tools.calculatePercent(realSymptoms: [
        "Blisters",
        "Headache",
        "Lost of Appetite",
        "Fatigue",
        "Fever"
      ])
    },
    {
      "name": "Tetanus",
      "explanation":
          "Tetanus, also known as 'Lockjaw', is a bacterial infection caused by 'Clostridium Tetani', and is characterized by muscle spasms. In the most common type, the spasms begin in the jaw and then progress to the rest of the body. Each spasm usually lasts a few minutes. Spasms occur frequently for 3 - 4 weeks.",
      "symptoms": [
        "Fever",
        "Cramped-up Jaw",
        "Muscle Cramps",
        "Headache",
        "Seizures",
        "Sweating",
        "Trouble in Swallowing",
      ],
      "percent": Tools.calculatePercent(realSymptoms: [
        "Fever",
        "Cramped-up Jaw",
        "Muscle Cramps",
        "Headache",
        "Seizures",
        "Sweats",
        "Trouble in Swallowing",
      ])
    },
    {
      "name":"Tularemia",
      "explanation":"Tularemia, also known as 'Rabbit Fever', is an infectious disease caused by the bacterium 'Francisella tularensis'.",
      "symptoms":[
        "Fever",
        "Skin Ulcer",
        "Lymph Nodes",
      ],"percent":Tools.calculatePercent(realSymptoms: [
        "Fever",
        "Skin Ulcer",
        "Lymph Nodes",
      ])
    },{
      "name":"Tuberculosis",
      "explanation":"Tuberculosis (TB) is an infectious disease usually caused by 'Mycobacterium Tuberculosis' (MTB) bacteria. Tuberculosis generally affects the lungs, but it can also affect other parts of the body.",
      "symptoms":[
        "Cough",
        "Fever",
        "Cough with Bloody Mucus",
        "Chest Pain",
        "Sweats",
        "Weight Lose",
      ],"percent":Tools.calculatePercent(realSymptoms: [
        "Cough",
        "Fever",
        "Cough with Bloody Mucus",
        "Chest Pain",
        "Sweats",
        "Weight Lose",
      ])
    },
    {
      "name":"African Trypanosomiasis",
      "explanation":"African trypanosomiasis, also known as 'African Sleeping Sickness' or 'Simply Sleeping Sickness', is an insect-borne parasitic infection of humans and other animals. It is caused by the species Trypanosoma brucei.",
      "symptoms":[
        "Fever",
        "Headache",
        "Trouble Sleeping",
        "Confusion",
        "Poor Coordination"
      ],"percent":Tools.calculatePercent(realSymptoms: [
        "Fever",
        "Headache",
        "Trouble Sleeping",
        "Confusion",
        "Poor Coordination"
      ])
    },
    {
      "name":"Pneumonia",
      "explanation":"Pneumonia is an inflammatory condition of the lung primarily affecting the small air sacs known as alveoli. Pneumonia is usually caused by infection with viruses or bacteria, and less commonly by other microorganisms. Identifying the responsible pathogen can be difficult. ",
      "symptoms":[
        "Cough",
        "Shortness of Breath",
        "Chest Pain",
        "Fever",
        "Fatigue",
        "Sweats",
        "Nausea",
        "Vomiting",
        "Diarrhea",
        "Confusion",
        
      ],"percent":Tools.calculatePercent(realSymptoms: [
        "Cough",
        "Shortness of Breath",
        "Chest Pain",
        "Fever",
        "Fatigue",
        "Sweats",
        "Nausea",
        "Vomiting",
        "Diarrhea",
        "Confusion",
    ])
    },
    {
      "name":"Typhoid Fever",
      "explanation":"Typhoid fever, also known as 'Typhoid', is a disease caused by 'Salmonella Serotype Typhi' bacteria. Without treatment, symptoms may last weeks or months. Other people may carry the bacterium without being affected, but they are still able to spread the disease.",
      "symptoms":[
        "Fever",
        "Headache",
        "Weakness",
        "Fatigue",
        "Muscle Pains",
        "Sweats",
        "Cough",
        "Lost of Appetite",
        "Weight Lose",
        "Abdominal Pain",
        "Diarrhea",
        "Rash",
        "Constipation",
        "Swollen Stomach"
      ],"percent":Tools.calculatePercent(realSymptoms: [
      "Fever",
      "Headache",
      "Weakness",
      "Fatigue",
      "Muscle Pains",
      "Sweats",
      "Cough",
      "Lost of Appetite",
      "Weight Lose",
      "Abdominal Pain",
      "Diarrhea",
      "Rash",
      "Constipation",
      "Swollen Stomach"
    ])
    },
    {
      "name":"Typhus",
      "explanation":"Typhus, also known as 'Typhus Fever', is a group of infectious diseases that can include 'Epidemic Typhus', 'Scrub Typhus', and 'Murine Typhus'. The diseases are caused by specific types of bacterial infection.",
      "symptoms":[
        "Fever",
        "Rash",
        "Headache",
        "Fatigue",
        "Nausea",
        "Abdominal Pain",
        "Diarrhea"
      ],"percent":Tools.calculatePercent(realSymptoms: [
        "Fever",
        "Rash",
        "Headache",
        "Fatigue",
        "Nausea",
        "Abdominal Pain",
        "Diarrhea"
    ])
    },
    {
      "name":"Whooping Cough",
      "explanation":"Whooping cough, also known as 'Pertussis' or the 'Hundered Day Cough', is a highly contagious bacterial disease. Following a fit of coughing, a high-pitched whoop sound or gasp may occur as the person breathes in. The violent coughing may last for 10 or more weeks, hence the phrase 'Hundered Day Cough'.",
      "symptoms":[
        "Runny Nose",
        "Fever",
        "Cough",
        "Shortness of Breath",
        "Apnea"
    ],"percent":Tools.calculatePercent(realSymptoms: [
        "Runny Nose",
        "Fever",
        "Cough",
        "Shortness of Breath",
        "Apnea"
    ])
    },{
    "name":"Mumps",
      "explanation":"Mumps is a viral disease caused by 'The Mumps Virus'. Symptoms typically occur 16 - 18 days after exposure to the virus and resolve within 2 weeks. About 1/3 of infections are asymptomatic.",
      "symptoms":[
        "Fever",
        "Headache",
        "Fatigue",
        "Weakness",
        "Muscle Pain",
        "Lost of Appetite"
      ],"percent":Tools.calculatePercent(realSymptoms: [
        "Fever",
        "Headache",
        "Fatigue",
        "Weakness",
        "Muscle Pains",
        "Lost of Appetite"
      ])
    },
    {
      "name":"Monkeypox",
      "explanation":"Monkeypox is an infectious viral disease that can occur in humans and some other animals. The time from exposure to onset of symptoms ranges from 5 - 21 days. The duration of symptoms is typically 2 - 4 weeks.",
      "symptoms":[
        "Fever",
        "Headache",
        "Muscle Pains",
        "Chills",
        "Rash",
        "Lymph Nodes",
      ],"percent":Tools.calculatePercent(realSymptoms: [
        "Fever",
        "Headache",
        "Muscle Pains",
        "Chills",
        "Rash",
        "Lymph Nodes",
        ])
    }
  ];
  @override
  Widget build(BuildContext context) {
    results = mainResults;
    Tools.sortResults();
    Tools.removeFalseResults();
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: (){
          selectedsymptoms=[];
          Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>SymptomsScreen()));

        },child: Icon(Icons.arrow_back_ios_new_rounded),
      ),
      appBar: Constants.appBar,
      body: Padding(
        padding: EdgeInsets.only(bottom: 80),
        child: ListView.builder(
            itemCount: results.length,
            itemBuilder: (context, index) {
              String percent = double.parse(results[index]["percent"].toString())
                  .toInt()
                  .toString();
              return Card(
                elevation: 3,
                child: ListTile(
                  title: Text(results[index]["name"].toString()),
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(percent.toString()+"%",style: TextStyle(color: Colors.deepPurple),),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.red,),
                  onTap: (){
                    Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>DetailsScreen(index : index)));
                  },
                ),
              );
            }),
      ),
    );
  }
}




List<Map<String, dynamic>> results = [];
