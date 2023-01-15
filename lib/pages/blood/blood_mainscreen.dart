import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class BloodMain extends StatefulWidget {
  @override
  BloodMainState createState() => BloodMainState();
}

class BloodMainState extends State<BloodMain> {
  late bool sort;
  List<user> userdetails1 = [
    user(
        no: '1',
        name: 'Maruf',
        group: 'O+',
        location: 'Badda,Dhaka',
        phone: '17293773'),
    user(
        no: '2',
        name: 'Murtoza Likhon',
        group: 'O-',
        location: 'Badda,Dhaka',
        phone: '17293773'),
    user(
        no: '3',
        name: 'Fahad',
        group: 'AB+',
        location: 'Gulshan,Dhaka',
        phone: '17293773'),
  ];
  List<user> userdetails = [
    user(
        no: '1',
        name: 'Maruf',
        group: 'O+',
        location: 'Badda,Dhaka',
        phone: '17293773'),
    user(
        no: '2',
        name: 'Murtoza Likhon',
        group: 'O-',
        location: 'Badda,Dhaka',
        phone: '17293773'),
    user(
        no: '3',
        name: 'Fahad',
        group: 'AB+',
        location: 'Gulshan,Dhaka',
        phone: '17293773'),
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
            Text('Blood Bank Data Table of UITS', style: boldTextStyle())
                .paddingOnly(top: 20, bottom: 5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                sortAscending: sort,
                sortColumnIndex: 1,
                columns: <DataColumn>[
                  DataColumn(label: mHeading('No.'), tooltip: 'No.'),
                  DataColumn(
                    label: mHeading('Name'),
                    onSort: (columnIndex, ascending) {
                      setState(() {
                        sort = !sort;
                      });
                      onSortColumn(columnIndex, ascending);
                    },
                  ),
                  DataColumn(label: mHeading('Group')),
                  DataColumn(label: mHeading('Location')),
                  DataColumn(label: mHeading('Phone')),
                ],
                rows: userdetails1
                    .map(
                      (data) => DataRow(
                        cells: [
                          DataCell(Text(data.no!, style: secondaryTextStyle())),
                          DataCell(
                              Text(data.name!, style: secondaryTextStyle())),
                          DataCell(
                              Text(data.group!, style: secondaryTextStyle())),
                          DataCell(Text(data.location!,
                              style: secondaryTextStyle())),
                          DataCell(Text(data.phone!,
                              style: secondaryTextStyle())),
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
  String? no;
  String? name;
  String? group;
  String? location;
  String? phone;

  user({this.no, this.name, this.group, this.location, this.phone});
}
