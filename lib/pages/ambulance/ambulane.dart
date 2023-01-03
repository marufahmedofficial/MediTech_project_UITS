import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

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
                onTap: () {
                  toasty(context, userList[index].name);
                },
                leading: CircleAvatar(radius: 20, backgroundImage: Image.asset('assets/images/ai.png').image),
                title: Text(
                  userList[index].name!,
                  style: boldTextStyle(),
                  maxLines: 2,
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

  UserModel({
    this.images,
    this.name,
    this.value,
  });
}

List<UserModel> userList = [
  UserModel(
    name: 'Lee',
    value: '2 min ago',
  ),
  UserModel(
    images: 'images/widgets/materialWidgets/mwLayoutWidgtes/MWListTile/ic_user2.png',
    name: 'John Smith',
    value: '2 min ago',
  ),
  UserModel(
    images: 'images/widgets/materialWidgets/mwLayoutWidgtes/MWListTile/ic_user3.png',
    name: 'Smith',
    value: '1 hour ago',
  ),
  UserModel(
    images: 'images/widgets/materialWidgets/mwLayoutWidgtes/MWListTile/ic_user1.png',
    name: 'Paul',
    value: '1 hour ago',
  ),
  UserModel(
    images: 'images/widgets/materialWidgets/mwLayoutWidgtes/MWListTile/ic_user4.png',
    name: 'John Smith',
    value: '1 hour ago',
  ),
  UserModel(
    images: 'images/widgets/materialWidgets/mwLayoutWidgtes/MWListTile/ic_user5.png',
    name: 'Lee',
    value: '1 day ago',
  ),
  UserModel(
    images: 'images/widgets/materialWidgets/mwLayoutWidgtes/MWListTile/ic_user2.png',
    name: 'Smith',
    value: '1 day ago',
  ),
  UserModel(
    images: 'images/widgets/materialWidgets/mwLayoutWidgtes/MWListTile/ic_user1.png',
    name: 'Emene',
    value: '2 min ago',
  ),
  UserModel(
    images: 'images/widgets/materialWidgets/mwLayoutWidgtes/MWListTile/ic_user2.png',
    name: 'Paul',
    value: '2 min ago',
  ),
  UserModel(
    images: 'images/widgets/materialWidgets/mwLayoutWidgtes/MWListTile/ic_user3.png',
    name: 'Jeck',
    value: '1 hour ago',
  ),
];

