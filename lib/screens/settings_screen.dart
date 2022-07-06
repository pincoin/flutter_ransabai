import 'package:flutter/material.dart';

import '../common/constants.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(titleSettings)),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: const Text(settingsAutoLogin),
              trailing: Switch(
                value: true,
                onChanged: (changed) {},
              ),
            ),
            ListTile(
              title: const Text(settingsPushNotification),
              trailing: Switch(
                value: true,
                onChanged: (changed) {},
              ),
            ),
            ListTile(
              title: const Text(settingsSMSNotification),
              trailing: Switch(
                value: true,
                onChanged: (changed) {},
              ),
            ),
            ListTile(
              title: const Text('$settingsCurrentVersion 0.1'),
              trailing: IconButton(
                icon: const Icon(Icons.download),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
