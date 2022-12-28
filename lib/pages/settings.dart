import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
      ),
      body:
      Container(
        child: SettingsList(
          sections: [
            SettingsSection(
              title: Text('Common'),
              tiles: <SettingsTile>[
                SettingsTile.navigation(
                  leading: Icon(Icons.language),
                  title: Text('Language'),
                  value: Text('English'),
                ),
                SettingsTile.switchTile(
                  onToggle: (value) {},
                  initialValue: true,
                  leading: Icon(Icons.format_paint),
                  title: Text('Enable Dark theme'),
                ),
                SettingsTile.switchTile(
                  onToggle: (value) {},
                  initialValue: false,
                  leading: Icon(Icons.notifications_active_rounded),
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

          ],
        ),
      ),
    );
  }
}
