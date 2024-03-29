import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditech/pages/about.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:settings_ui/settings_ui.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}


bool isDefault = true;
bool isTrackColorSwitch = false;

class _SettingsState extends State<Settings> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
      ),
      body:
      SettingsList(
        sections: [
          SettingsSection(
            title: Text('Common'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                onPressed: (context) {
                  showCupertinoDialog(
                      context: context,
                      builder: (BuildContext context) => Theme(
                        data: ThemeData.light(),
                        child: CupertinoAlertDialog(
                          title: Text(
                            'Select Language',
                            style: TextStyle(color: CupertinoColors.systemIndigo, fontSize: 18),
                          ),
                          actions: [
                            CupertinoDialogAction(
                              child: Text(
                                'Bengali',
                                style: TextStyle(color: CupertinoColors.black, fontSize: 18),
                              ),
                              onPressed: () {

                          },
                        ),
                        CupertinoDialogAction(
                          child: Text(
                            'English',
                            style: TextStyle(color: CupertinoColors.black, fontSize: 18),
                          ),
                          onPressed: () {
                          },
                        ),
                        CupertinoDialogAction(
                          child: Text(
                            'Hindi',
                            style: TextStyle(color: CupertinoColors.black, fontSize: 18),
                          ),
                          onPressed: () {
                          },
                        ),
                        CupertinoDialogAction(
                          child: Text(
                            'China',
                            style: TextStyle(color: CupertinoColors.black, fontSize: 18),
                          ),
                          onPressed: () {
                          },
                        ),
                        CupertinoDialogAction(
                          child: Text(
                            'Arabic',
                            style: TextStyle(color: CupertinoColors.black, fontSize: 18),
                          ),
                          onPressed: () {
                          },
                        ),
                        CupertinoDialogAction(
                          child: Text(
                            'Spanish',
                            style: TextStyle(color: CupertinoColors.black, fontSize: 18),
                          ),
                          onPressed: () {
                          },
                        ),
                        CupertinoDialogAction(
                          child: Text(
                            'Cancel',
                            style: TextStyle(color: CupertinoColors.systemRed, fontSize: 18,fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ));

            },
            leading: Icon(Icons.language),
            title: Text('Language'),
            value: Text('English'),
          ), SettingsTile(
                title: Text('About'),
                value: Text('About info '),
                leading: Icon(Icons.info),
                onPressed: (BuildContext context) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  AboutPage()));
                }
              ),

          SettingsTile.switchTile(
            onToggle: (value) {},
            initialValue: false,
            leading: Icon(Icons.format_paint),
            trailing: CupertinoSwitch(
            value: isTrackColorSwitch,
            trackColor: getColorFromHex('#f2866c'),
            activeColor: getColorFromHex('#8998FF'),
              onChanged: (bool val) {
               isTrackColorSwitch = val;
                 setState(() {});
                 },
            ),
            title: Text('Enable Dark theme'),
          ),
          SettingsTile.switchTile(
            onToggle: (value) {},
            initialValue: true,
            leading: Icon(Icons.notifications_active_rounded),
            trailing:CupertinoSwitch(
               value: isDefault,
             onChanged: (bool val) {
           isDefault = val;
           setState(() {});
           },
            ),
            title: Text('Enable Notifications'),
          ),
        ],
      ),
      SettingsSection(
        title: Text('Security'),
        tiles: [
          SettingsTile(
            title: Text('Password'),
            value: Text('App Password'),
            leading: Icon(Icons.lock),
            onPressed: (BuildContext context) {},
          ),

           SettingsTile(title: Text('FingerPrint'),
             leading: Icon(Icons.fingerprint),
             value: Text('Use Fingerprint to open app'),
           )

          // SettingsTile.switchTile(
          //   title: 'Use fingerprint',
          //   leading: Icon(Icons.fingerprint),
          //   switchValue: true,
          //   onToggle: (value) {},
          // ),
        ],
      ),
      SettingsSection(
        title: Text('Account'),
        tiles: [
          SettingsTile(
            title: Text('Phone'),
            leading: Icon(Icons.phone),
            onPressed: (BuildContext context) {},
          ),
          SettingsTile(
            title: Text('Email'),
            leading: Icon(Icons.email),
            onPressed: (BuildContext context) {},
          ),
          SettingsTile(
            title: Text('Sign Out'),
            leading: Icon(Icons.logout_rounded),
            onPressed: (BuildContext context) {},
          ),

        ],
      ),

      ],)
        );
  }
}
