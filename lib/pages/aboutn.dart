import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;
class AboutN extends StatelessWidget {
  const AboutN({super.key});

  // These tiles are also used as drawer nav items in home route.
  static final List<Widget> kAboutListTiles = <Widget>[
    const ListTile(
      title: Text('Descrption'),
    ),
    const Divider(),
    ListTile(
      leading: const Icon(Icons.code),
      title: const Text('Source code on GitHub'),
      onTap: () => url_launcher.launchUrl(Uri.parse('GITHUB_URL')),
    ),
    ListTile(
      leading: const Icon(Icons.bug_report),
      title: const Text('Report issue on GitHub'),
      onTap: () => url_launcher.launchUrl(Uri.parse('issues')),
    ),
    ListTile(
      leading: const Icon(Icons.open_in_new),
      title: const Text('Visit my website'),
      onTap: () => url_launcher.launchUrl(Uri.parse('AUTHOR_SITE')),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final header = ListTile(
      leading: Image.asset('assets/imahes/appstore.png'),
      title: const Text('APP_NAME'),
      subtitle: Text('kPackageInfo.version'),
      trailing: IconButton(
        icon: const Icon(Icons.info),
        onPressed: () {
          showAboutDialog(
            context: context,
            applicationName: 'MediTech',
            applicationVersion:' kPackageInfo.version',
            applicationIcon:Image.asset('assets/imahes/appstore.png'),
            children: <Widget>[const Text('APP_DESCRIPTION')],
          );
        },
      ),
    );
    return ListView(
      children: <Widget>[
        header,
        ...kAboutListTiles,
        ListTile(
          leading: const Icon(Icons.shop),
          title: const Text('Rate the app'),
          onTap: () =>
              Navigator.of(context).pushNamed('/growth_inapp_review_ex'),
        ),
        ListTile(
          leading: const Icon(Icons.apps),
          title: const Text('My Other Apps'),
          onTap: () => Navigator.of(context).pushNamed('/growth_my_other_apps'),
        ),
      ],
    );
  }
}
