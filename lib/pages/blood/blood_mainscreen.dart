import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class BloodMain extends StatefulWidget {

  @override
  BloodMainState createState() => BloodMainState();
}

class BloodMainState extends State<BloodMain> {
  late bool sort;
  List<user> selectedList = [];
  List<user> userdetails1 = [
    user(
      rank: '1',
      name: 'john',
      email: 'john@gmail.com',
      designation: 'Designer',
      birthday: '12-03-1997',
      location: 'Mumbai',
    ),
    user(
      rank: '2',
      name: 'Lee',
      email: 'Lee@gmail.com',
      designation: 'Designer',
      birthday: '12-07-1997',
      location: 'Mumbai',
    ),
    user(
      rank: '3',
      name: 'Miller',
      email: 'Miller@gmail.com',
      designation: 'Staff',
      birthday: '12-03-1997',
      location: 'Mumbai',
    ),
    user(
      rank: '4',
      name: 'killer',
      email: 'killer@gmail.com',
      designation: 'Manager',
      birthday: '13-04-1997',
      location: 'Mumbai',
    ),
    user(
      rank: '5',
      name: 'Smiler',
      email: 'Smiler@gmail.com',
      designation: 'Developer',
      birthday: '12-06-1997',
      location: 'Mumbai',
    ),
  ];
  List<user> userdetails = [
    user(
      rank: '1',
      name: 'john',
      email: 'john@gmail.com',
      designation: 'Designer',
      birthday: '12-03-1997',
      location: 'Mumbai',
    ),
    user(
      rank: '2',
      name: 'Lee',
      email: 'Lee@gmail.com',
      designation: 'Designer',
      birthday: '12-07-1997',
      location: 'Mumbai',
    ),
    user(
      rank: '3',
      name: 'Miller',
      email: 'Miller@gmail.com',
      designation: 'Staff',
      birthday: '12-03-1997',
      location: 'Mumbai',
    ),
    user(
      rank: '4',
      name: 'killer',
      email: 'killer@gmail.com',
      designation: 'Manager',
      birthday: '13-04-1997',
      location: 'Mumbai',
    ),
    user(
      rank: '5',
      name: 'Smiler',
      email: 'Smiler@gmail.com',
      designation: 'Developer',
      birthday: '12-06-1997',
      location: 'Mumbai',
    ),
  ];

  onSortColumn(int columnIndex, bool ascending) {
    if (columnIndex == 1) {
      if (ascending) {
        userdetails1.sort((a, b) => a.name!.compareTo(b.name!));
      } else {
        userdetails1.sort((a, b) => b.name!.compareTo(a.name!));
      }
    }
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    sort = false;
    setState(() {});
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    Widget mHeading(var value) {
      return Text(value, style: boldTextStyle());
    }

    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.all(16),
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Text('Data Table with name sorting', style: boldTextStyle()).paddingOnly(top: 20, bottom: 5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                sortAscending: sort,
                sortColumnIndex: 1,
                columns: <DataColumn>[
                  DataColumn(label: mHeading('Rank'), tooltip: 'Rank'),
                  DataColumn(
                    label: mHeading('Name'),
                    onSort: (columnIndex, ascending) {
                      setState(() {
                        sort = !sort;
                      });
                      onSortColumn(columnIndex, ascending);
                    },
                  ),
                  DataColumn(label: mHeading('Email')),
                  DataColumn(label: mHeading('Designation')),
                  DataColumn(label: mHeading('Birthdate')),
                  DataColumn(label: mHeading('Location')),
                ],
                rows: userdetails1
                    .map(
                      (data) => DataRow(
                    cells: [
                      DataCell(Text(data.rank!, style: secondaryTextStyle())),
                      DataCell(Text(data.name!, style: secondaryTextStyle())),
                      DataCell(Text(data.email!, style: secondaryTextStyle())),
                      DataCell(Text(data.designation!, style: secondaryTextStyle())),
                      DataCell(Text(data.birthday!, style: secondaryTextStyle())),
                      DataCell(Text(data.location!, style: secondaryTextStyle())),
                    ],
                  ),
                )
                    .toList(),
              ).visible(userdetails1.isNotEmpty),
            ),
          ],
        ),
      ),
    );
  }
}

class user {
  String? rank;
  String? name;
  String? email;
  String? designation;
  String? birthday;
  String? location;

  user({this.rank, this.name, this.email, this.designation, this.birthday, this.location});
}