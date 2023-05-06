import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DonatePage extends StatefulWidget {
  const DonatePage({super.key});

  @override
  State<DonatePage> createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {
  List<String> suggestonsLocation = [
    "Mirpur",
    "Mohakhali",
    "Uttara",
    "Banani",
    "Khilkhet",
    "Azimpur",
    "Framgate"
  ];
  String? msgError;
  String? emailError;
  String? passwordError;
  bool checkBoxClick = false;
  String? _date;
  String? imageUrl;
  bool isCheckTerms = false;
  bool isDonor = false;
  String? selectedAddress;
  String? selectedBloodGroup;
  String? selectedGender;
  bool confirmStage = false;
  bool stage1 = true;
  bool stage2 = false;
  bool stage3 = false;
  bool infoStage = false;
  bool isChecked = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30,bottom: 2),
      height: MediaQuery.of(context).size.height-180,
      child:
            Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (msgError != null)
              Text(
                msgError!,
                style: const TextStyle(color: Colors.redAccent),
              ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                showCustomAlertDialog(
                  context,
                  "Camera",
                  "Gallery",
                  "Choose Your Source",
                  (String value) {
                    setState(
                      () {
                        imageUrl = value;
                      },
                    );
                  },
                );
              },
              child: imageUrl == null
                  ? Container(
                      padding: const EdgeInsets.all(40),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(60),
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: .5,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: const Icon(
                        CupertinoIcons.camera,
                        color: Colors.grey,
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("$imageUrl"),
                        radius: 60,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(80),
                          child: Image.file(
                            File(imageUrl!),
                            fit: BoxFit.cover,
                            width: 120,
                          ),
                        ),
                      ),
                    ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey.shade200,
                          width: 1,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: CupertinoTextField(
                        padding: const EdgeInsets.only(
                          top: 12,
                          bottom: 12,
                          left: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade100),
                        ),
                        style: const TextStyle(color: Colors.grey),
                        placeholder: "First Name",
                        placeholderStyle: const TextStyle(
                          color: Colors.grey,
                          fontFamily: "Schyler",
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey.shade200,
                          width: 1,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: CupertinoTextField(
                        padding: const EdgeInsets.only(
                          top: 12,
                          bottom: 12,
                          left: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade100),
                        ),
                        style: const TextStyle(color: Colors.grey),
                        placeholder: "Last Name",
                        placeholderStyle: const TextStyle(
                          color: Colors.grey,
                          fontFamily: "Schyler",
                          fontSize: 14,
                        ),

                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),


            Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey.shade200,
                          width: 1,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: CupertinoTextField(
                        padding: const EdgeInsets.only(
                          top: 12,
                          bottom: 12,
                          left: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade100),
                        ),
                        style: const TextStyle(color: Colors.grey),
                        placeholder: "Phone Number",
                        placeholderStyle: const TextStyle(
                          color: Colors.grey,
                          fontFamily: "Schyler",
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: _selectGender,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(top: 10, right: 12),
                    height: 50,
                    width: MediaQuery.of(context).size.width * .36,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey.shade200,
                        width: 1,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          selectedGender ?? "Select Gender",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "Schyler",
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          CupertinoIcons.person_2_alt,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                InkWell(
                  onTap: _datePick,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(top: 10, right: 12),
                    height: 50,
                    width: MediaQuery.of(context).size.width * .36,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey.shade200,
                        width: 1,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _date ?? "Date Of Birth",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "Schyler",
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.calendar_month,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Flexible(
                  child: InkWell(
                    onTap: () {
                      selectBloodGroupUi(context, (value) {
                        setState(() {
                          selectedBloodGroup = value;
                        });
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(top: 10, right: 12),
                      height: 50,
                      width: MediaQuery.of(context).size.width * .6,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey.shade200,
                          width: 1,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            selectedBloodGroup ?? "Select Your Blood Group",
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: "Schyler",
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 4),
                          Icon(
                            Icons.bloodtype,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            //autoComplite Location
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Row(
                children: [
                  Flexible(
                    child: InkWell(
                      onTap: () {
                        selectAddressGroupUi(context, (value) {
                          setState(() {
                            selectedAddress = value;
                          });
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(top: 10, right: 12),
                        height: 50,
                        width: MediaQuery.of(context).size.width * .6,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey.shade200,
                            width: 1,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              selectedAddress ?? "Select Your Address",
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "Schyler",
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(width: 4),
                            Icon(
                              Icons.bloodtype,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),

            CupertinoButton(
              color: Colors.red,
              child: const Text(
                "Continue",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Schyler",
                ),
              ),
              onPressed: () {},
            )
          ],
      ),
    ),
        ));
  }

  void _datePick() async {
    DateTime? selectedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1990),
        lastDate: DateTime.now());
    if (selectedDate != null) {
      setState(() {
        _date = DateFormat("dd/MM/yyyy").format(selectedDate);
      });
    }
  }

  void showCustomAlertDialog(
    BuildContext context,
    String nMsg,
    String pMsg,
    String msg,
    Function(String value) onclick,) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text(
          'Alert',
          style: TextStyle(
            color: Colors.red,
            fontFamily: "Schyler",
            fontSize: 22,
          ),
        ),
        content: Text(
          msg,
          style: const TextStyle(
            color: Colors.black,
            fontFamily: "Schyler",
            fontSize: 20,
          ),
        ),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () async {
              Navigator.pop(context);

              final file =
                  await ImagePicker().pickImage(source: ImageSource.camera);
              onclick(file!.path);
            },
            child: Text(nMsg),
          ),
          CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: () async {
              Navigator.pop(context);
              final file =
                  await ImagePicker().pickImage(source: ImageSource.gallery);
              onclick(file!.path);
            },
            child: Text(pMsg),
          ),
        ],
      ),
    );
  }

  void _selectGender() {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
              onPressed: () {
                selectedGender = "Female";
                Navigator.pop(context);
                setState(() {});
              },
              child: const Text("🙋‍♀Female")),
          CupertinoActionSheetAction(
              onPressed: () {
                selectedGender = "Male";
                Navigator.pop(context);
                setState(() {});
              },
              child: const Text("🤵Male"))
        ],
        cancelButton: CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Cancel")),
      ),
    );
  }

  void selectBloodGroupUi(BuildContext context, onClick(value)) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
                onClick("A+");
              },
              child: const Text("A+")),
          CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
                onClick("A-");
              },
              child: const Text("A-")),
          CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
                onClick("B+");
              },
              child: const Text("B+")),
          CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
                onClick("B-");
              },
              child: const Text("B-")),
          CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
                onClick("AB+");
              },
              child: const Text("AB+")),
          CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
                onClick("AB-");
              },
              child: const Text("AB-")),
          CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
                onClick("O+");
              },
              child: const Text("O+")),
          CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
                onClick("O-");
              },
              child: const Text("O-")),
        ],
        cancelButton: CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Cancel")),
      ),
    );
  }

  void selectAddressGroupUi(BuildContext context, onClick(value)) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
                onClick("Uttara");
              },
              child: const Text("Uttara")),
          CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
                onClick("Khilkhet");
              },
              child: const Text("Khilkhet")),
          CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
                onClick("Banani");
              },
              child: const Text("Banani")),
          CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
                onClick("Mohakhali");
              },
              child: const Text("Mohakhali")),
          CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
                onClick("Framgate");
              },
              child: const Text("Framgate")),
          CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
                onClick("Shyamoli");
              },
              child: const Text("Shyamoli")),
          CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
                onClick("Badda");
              },
              child: const Text("Badda")),
          CupertinoActionSheetAction(
              onPressed: () {
                Navigator.pop(context);
                onClick("Motijheel");
              },
              child: const Text("Motijheel")),
        ],
        cancelButton: CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Cancel")),
      ),
    );
  }
}
