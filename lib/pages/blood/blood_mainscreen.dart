import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';  //https://pub.dev/packages/nb_utils

class BloodMain extends StatefulWidget {

  @override
  BloodMainState createState() => BloodMainState();
}

class BloodMainState extends State<BloodMain> {
  List<user> userdetails = [
   user(
      name: 'Maruf .',
      group: 'O+',
      phone: '017*********',
      address: 'Baridhara,Dhaka',
    ),
    user(
      name: 'M. Likhon',
      group: 'A+',
      phone: '015**********',
      address: 'Baridhara,Dhaka',
    ),
    user(
      name: 'HR Fahad',
      group: 'O+',
      phone: '017********',
      address: 'Baridhara,Dhaka',
    ),
    user(
      name: 'Selim Mia',
      group: 'A+',
      phone: '016******',
      address: 'Baridhara,Dhaka',),
user(
      name: 'Nazmul Huda',
      group: 'B-',
      phone: '01979954540',
      address: 'Dhaka',),
user(
      name: 'Shahriar Islam',
      group: 'B+',
      phone: '01309653673',
      address: 'Dhaka',),
user(
      name: 'Tonmoy Barai ',
      group: 'B+',
      phone: '01626758447',
      address: 'Dhaka',),
user(
      name: 'Ashik Mahmud',
      group: 'O+',
      phone: '01767930631',
      address: 'Dhaka',),
user(
      name: 'Tajul Islam',
      group: 'B+',
      phone: '01792209594',
      address: 'Dhaka',),
user(
      name: 'Tahjibul Islam',
      group: 'B+',
      phone: '01953006311',
      address: 'Dhaka',),
user(
      name: 'Ashikuzzaman ',
      group: 'B+',
      phone: '01817279808',
      address: 'Dhaka',),
user(
      name: 'Golam Moula',
      group: 'O+',
      phone: '01983757156',
      address: 'Dhaka',),
user(
      name: 'Ardhika Das',
      group: 'B+ ',
      phone: '01631145672',
      address: 'Dhaka',),
user(
      name: 'Fahariar Abid ',
      group: 'AB+',
      phone: '01690278901',
      address: 'Dhaka',),
user(
      name: 'Eakhlasur Rahman ',
      group: 'AB+',
      phone: '01911463152',
      address: 'Dhaka',),
user(
      name: 'Rashed ',
      group: 'A+',
      phone: '01830407705',
      address: 'Dhaka',),
user(
      name: 'Robin ',
      group: 'O-',
      phone: '01956303733',
      address: 'Dhaka',),
user(
      name: 'Lotus Mollick',
      group: 'B+',
      phone: '01883499601',
      address: 'Dhaka',),
user(
      name: 'Shrikanta Dhar',
      group: 'O-',
      phone: '01824938238',
      address: 'Dhaka',),
user(
      name: 'Proshanto Kumar',
      group: 'B+',
      phone: '01832821315',
      address: 'Dhaka',),
user(
      name: 'Nihad ',
      group: 'A+',
      phone: '01708056038',
      address: 'Dhaka',),
user(
      name: 'Shubrota paul',
      group: 'B+',
      phone: '01926831476',
      address: 'Dhaka',),
user(
      name: 'Tahmedul islam ',
      group: 'B+',
      phone: '01817107230',
      address: 'Dhaka',),
user(
      name: 'Onika Rahman',
      group: 'AB+ ',
      phone: '01982688200',
      address: 'Dhaka',),
user(
      name: 'Mehadi Hasan',
      group: 'A+',
      phone: '01633914782',
      address: 'Dhaka',),
user(
      name: 'Sadik Hossain ',
      group: 'A+ ',
      phone: '01648061213',
      address: 'Dhaka',),
user(
      name: 'Ahmed Akanto',
      group: 'AB+ ',
      phone: '01764962199 ',
      address: 'Dhaka',),
user(
      name: 'Azharul Islam ',
      group: 'B+',
      phone: '01625360981',
      address: 'Dhaka',),
user(
      name: 'Jannatul Ferdush ',
      group: 'A+',
      phone: '01632976280 ',
      address: 'Dhaka',),
user(
      name: 'Ramim Ahammad ',
      group: 'A+ ',
      phone: '01857558333',
      address: 'Dhaka',),
user(
      name: 'Imtiaz Uddin',
      group: 'O+',
      phone: '01722959787',
      address: 'Dhaka',),
user(
      name: 'Sotabdi Rani',
      group: 'A+',
      phone: '01777379041',
      address: 'Dhaka',),
user(
      name: 'Ariful Hasan ',
      group: 'O+ ',
      phone: '01811225515',
      address: 'Dhaka',),
user(
      name: 'Tamanna Mim ',
      group: 'A+',
      phone: '01639659437',
      address: 'Dhaka',),
user(
      name: 'Shariful Islam',
      group: 'B+',
      phone: '01521111053',
      address: 'Dhaka',),
user(
      name: 'Rafsun Jobaer',
      group: 'O+',
      phone: '01704555504',
      address: 'Dhaka',),
user(
      name: 'Mizanur Rahman ',
      group: 'A+ ',
      phone: '01954386166',
      address: 'Dhaka',),
user(
      name: 'Nazmul Islam',
      group: 'AB+',
      phone: '01613100555',
      address: 'Dhaka',),
user(
      name: 'Yeasin Omor',
      group: 'O+',
      phone: '01611613428',
      address: 'Dhaka',),
user(
      name: 'Sraboni Akter',
      group: 'B+ ',
      phone: '01635395610',
      address: 'Dhaka',),
user(
      name: 'M. Junayed',
      group: 'O+',
      phone: '01710997234',
      address: 'Dhaka',),
user(
      name: 'Md Rezwan',
      group: 'B+',
      phone: '01829113458',
      address: 'Dhaka',),
user(
      name: 'Jobair Rahman ',
      group: 'A+',
      phone: '001303670898',
      address: 'Dhaka',),
user(
      name: 'Tasnoba Faria ',
      group: 'O+',
      phone: '01629356734',
      address: 'Dhaka',),
user(
      name: 'Mahmuda Akter ',
      group: 'B+',
      phone: '01797060060',
      address: 'Dhaka',),
user(
      name: 'Nusrat jahan',
      group: 'B+',
      phone: '01914909625',
      address: 'Dhaka',),
user(
      name: 'Jannatul Lova',
      group: 'O+',
      phone: '01633256327',
      address: 'Dhaka',),
user(
      name: 'Sinthia Keya',
      group: 'AB+',
      phone: '01612322251',
      address: 'Dhaka',),
user(
      name: 'Shahin Hossain',
      group: 'B+',
      phone: '01811488193',
      address: 'Dhaka',),
user(
      name: 'Afsana Mitu ',
      group: 'B+',
      phone: '01684866536',
      address: 'Dhaka',),
user(
      name: 'Yeamin Islam ',
      group: 'B+',
      phone: '01406900468',
      address: 'Dhaka',),
user(
      name: 'Hasibul Hasan',
      group: 'B+',
      phone: '01710666872',
      address: 'Dhaka',),
user(
      name: 'Jahedul Alam',
      group: 'O+',
      phone: '01703806406',
      address: 'Dhaka',),
user(
      name: 'Morium Mozumdar',
      group: 'A+',
      phone: '01870479760',
      address: 'Dhaka',),
user(
      name: 'A. Junaid',
      group: 'O+',
      phone: '01834087615',
      address: 'Dhaka',),
user(
      name: 'Jahidul Islam',
      group: 'O+',
      phone: '01759048976',
      address: 'Dhaka',),
user(
      name: 'Sazzed Hossain',
      group: 'B+',
      phone: '01904439804',
      address: 'Dhaka',),
user(
      name: 'Nurjahan Islam',
      group: 'O+',
      phone: '01616500910',
      address: 'Dhaka',),
user(
      name: 'Mahmuda Nusrat ',
      group: 'A+',
      phone: '01744248461',
      address: 'Dhaka',),
user(
      name: 'Monir Hasan ',
      group: 'A+',
      phone: '01857013305',
      address: 'Dhaka',),
user(
      name: 'KAZI AMIR ',
      group: 'B+',
      phone: '01704819250',
      address: 'Dhaka',),
user(
      name: 'Asma Ul Husna',
      group: 'O+',
      phone: '01645890348',
      address: 'Dhaka',),

user(
      name: 'Hridoy Mia ',
      group: 'B+',
      phone: '01860749642',
      address: 'Dhaka',),
user(
      name: 'Baezid Bhuiyan',
      group: 'B+',
      phone: '01303645021',
      address: 'Dhaka',),
user(
      name: 'S. Rifat ',
      group: 'O+',
      phone: '01836054981',
      address: 'Dhaka',),
user(
      name: 'Wares Atique',
      group: 'A+',
      phone: '01635244991',
      address: 'Dhaka',),
user(
      name: 'Raiyan Hasanat',
      group: 'AB+',
      phone: '01711086709',
      address: 'Dhaka',)

  ];

  @override
  Widget build(BuildContext context) {
    Widget mHeading(var value) {
      return Text(value, style: boldTextStyle());
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.black, // <-- SEE HERE
          ),
          centerTitle: true,
          title: const Text("UITS Blood bank list",style: TextStyle(color: Colors.black),),
          backgroundColor: CupertinoColors.systemBackground,
        ),
        body: ListView(
          padding: EdgeInsets.all(5),
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Text('Swipe right to full view', style: boldTextStyle()).paddingBottom(3),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: <DataColumn>[
                  DataColumn(label: mHeading('Name')),
                  DataColumn(label: mHeading('Group')),
                  DataColumn(label: mHeading('Phone')),
                  DataColumn(label: mHeading('Address')),
                ],
                rows: userdetails
                    .map(
                      (data) => DataRow(
                    cells: [
                      DataCell(Text(data.name!, style: secondaryTextStyle())),
                      DataCell(Text(data.group!, style: secondaryTextStyle())),
                      DataCell(Text(data.phone!, style: secondaryTextStyle())),
                      DataCell(Text(data.address!, style: secondaryTextStyle())),
                    ],
                  ),
                )
                    .toList(),
              ).visible(userdetails.isNotEmpty),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class user {
  String? name;
  String? group;
  String? phone;
  String? address;

  user({ this.name, this.group, this.phone, this.address});
}