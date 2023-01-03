import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../data/json.dart';
import '../theme/colors.dart';
import '../widgets/avatar_image.dart';
import '../widgets/category_box.dart';
import '../widgets/doctor_box.dart';
import '../widgets/textbox.dart';
import 'doctor_profile_page.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({ Key? key }) : super(key: key);

  @override
  _DoctorPageState createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: getBody(),
    );
  }

  getBody(){
    return
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(child: Text("Hi,", style: TextStyle(fontSize: 23, color: primary, fontWeight: FontWeight.w500),),),
                SizedBox(height: 5,),
                Container(child: Text("Let's Find Your Doctor", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),)),
                SizedBox(height: 25,),
                Container(child: Text("Categories", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)),
                SizedBox(height:10),
                SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: 5),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryBox(title: "Heart", icon: Icons.favorite, color: Colors.red, ),
                      CategoryBox(title: "Medical", icon: Icons.local_hospital, color: Colors.blue, ),
                      CategoryBox(title: "Dental", icon: Icons.details_rounded, color: Colors.purple, ),
                      CategoryBox(title: "Healing", icon: Icons.healing_outlined, color: Colors.green, ),
                      CategoryBox(title: "Heart", icon: Icons.favorite, color: Colors.red, ),
                      CategoryBox(title: "Medical", icon: Icons.local_hospital, color: Colors.blue, ),
                      CategoryBox(title: "Dental", icon: Icons.details_rounded, color: Colors.purple, ),
                      CategoryBox(title: "Healing", icon: Icons.healing_outlined, color: Colors.green, ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(height: 25,),
                Container(child: Text("Popular Doctors", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)),
                SizedBox(height: 10),
                SingleChildScrollView(
                    child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(child: CustomTextBox()),
                                  SizedBox(width: 5,),
                                  Icon(Icons.filter_list_rounded, color: primary, size: 35,),
                                ],
                              ),
                              SizedBox(height: 20,),
                              getDoctorList()
                            ]
                        )
                    )
                )
              ]

          ),
        ),
      );
  }
  getDoctorList() {
    return
      new StaggeredGridView.countBuilder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 4,
        itemCount: doctors.length,
        itemBuilder: (BuildContext context, int index) =>
            DoctorBox(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => DoctorProfilePage()));
                },
                index: index, doctor: doctors[index]
            ),
        staggeredTileBuilder: (int index) =>
        new StaggeredTile.count(2, index.isEven ? 3 : 2),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
      );
  }

}