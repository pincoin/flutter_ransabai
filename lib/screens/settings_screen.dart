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
            ListTile(),
          ],
        ),
      ),
    );
  }
}
