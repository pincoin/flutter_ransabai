import 'package:flutter/material.dart';

import './screens/root_screen.dart';
import '../common/constants.dart';
import 'common/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: AppTheme.lightTheme,
      home: const RootScreen(),
    );
  }
}
