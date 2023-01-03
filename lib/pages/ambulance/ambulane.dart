import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class AmbulanceList extends StatefulWidget {



  @override
  AmbulanceListState createState() => AmbulanceListState();
}

class AmbulanceListState extends State<AmbulanceList> {


  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Ambulance List"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: userList.length,
          shrinkWrap: true,
          padding: EdgeInsets.all(8),
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.white,
              margin: EdgeInsets.all(8),
              elevation: 2,
              child: ListTile(
                onTap: () async{Uri phoneno = Uri.parse('tel:+97798345348734');
                if (await launchUrl(phoneno)) {
                }else{

                }
                },
                leading: CircleAvatar(radius: 20, backgroundImage: Image.asset('assets/images/ai.png').image),
                title: Text(
                  userList[index].name!,
                  style: boldTextStyle(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Container(
                  margin: EdgeInsets.only(top: 4),
                  child: Text(userList[index].value!, style: secondaryTextStyle()),
                ),
                trailing: Container(
                  padding: EdgeInsets.only(right: 4),
                  child: Icon(CupertinoIcons.phone, color: Colors.red),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

}

class UserModel {
  String? images;
  String? name;
  String? value;
  String? number;

  UserModel({
    this.images,
    this.name,
    this.value,

  });
}

List<UserModel> userList = [
UserModel(
name: 'Habiba Ambulance Services',
value: '01744-743365',
),
UserModel(
name: 'Alif Ambulance Service',
value: '01819-253777',
),
UserModel(
name: 'Ad-Din Ambulance',
value: '01713-488412',
),
UserModel(
name: 'Fatama Ambulance Services',
value: '01965-284951',
),
UserModel(
name: 'Gram Bangla Ambulance Services',
value: '8745355553',
),
UserModel(
name: 'Allahr Dan Ambulance Services',
value: '01912-010075',
),
UserModel(
name: 'Ambulance Servicess',
value: '01627-165628',
),
UserModel(
name: 'Shohag Ambulance Services',
value: '01971-115672',
),
UserModel(
name: 'KHALED AMBULANCE SERVICE ',
value: '+8801933246577',
),
UserModel(
name: 'SALMAN AMBULANCE SERVICE',
value: '+8801941354079',
),
UserModel(
name: ' Habiba Ambulance Services',
value: '01791-556875',
),
UserModel(
name: 'Asha Ambulance Services',
value: '01711-450839',
),
UserModel(
name: 'Dhaka Medical College Hospital',
value: '+880-2-9669340',
),
UserModel(
name: 'Dhaka Renal Centre & Genera Hospital',
value: '+880-2-8621841',
),
UserModel(
name: 'Apollo Hospitals Dhaka',
value: '+8801714-090000',
),
UserModel(
name: 'Apanjon Ambulance Service',
value: '9125420',
),
UserModel(
name: 'Al-Markazul Islami Ambulance Service',
value: '8114980',
),
UserModel(
name: 'Life Line Healthcare Limited',
value: '+8801199-899919',
),
UserModel(
name: 'Lab-Aid Cardiac Hospital',
value: '+8801713333337',
),
UserModel(
name: 'Rafa Ambulance Service',
value: '9110663',
),
UserModel(
name: 'Ad-Din Hospital',
value: '9362929',
),
UserModel(
name: 'Alif Ambulance',
value: '9131688',
),
UserModel(
name: 'Fire Brigade Ambulance Service List',
value: '+8802-9553333',
),
UserModel(
name: 'Heart Hospital',
value: '+8802-9801874',
),
UserModel(
name: 'United Hospital',
value: '+880-2-8836434',
),
UserModel(
name: 'Medinova Medical Service Ltd.',
value: '9120288',
),
UserModel(
name: 'Monowara Hospital (pvt.) Ltd. Ambulance Service',
value: '8318529',
),
UserModel(
name: 'Square Hospital',
value: '+880-2-8859007',
),
UserModel(
name: 'Day-Night Ambulance Service',
value: '8122041',
),
UserModel(
name: 'Medinova Medical Service Ltd',
value: '+880-2-8318529',
),
UserModel(
name: 'Orthopedic Hospital',
value: '+880-2-9114075',
),
UserModel(
name: 'Shefa Ambulance Services',
value: '8110864',
),
UserModel(
name: 'Mim Ambulance Service',
value: '+88-01716-523567',
),
UserModel(
name: 'Ambulance Service',
value: '+88-01405-600700',
),

];

