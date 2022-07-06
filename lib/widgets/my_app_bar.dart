import 'package:flutter/material.dart';

import '../common/constants.dart';
import '../screens/notification_screen.dart';
import '../screens/settings_screen.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int index;

  const MyAppBar(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appBars = [
      AppBar(
        title: const Text(titleHome),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.notifications_outlined),
          onPressed: () => _notificationHandler(context),
        ),
      ),
      AppBar(
        title: const Text(titleFavorite),
        centerTitle: true,
      ),
      AppBar(
        title: const TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            hintText: titleSearch,
            hintStyle: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            border: UnderlineInputBorder(),
          ),
        ),
        centerTitle: true,
      ),
      AppBar(
        title: const Text(titleOrders),
        centerTitle: true,
      ),
      AppBar(
        title: const Text(titleMyPage),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.notifications_outlined),
          onPressed: () => _notificationHandler(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => _settingsHandler(context),
          )
        ],
      )
    ];
    return appBars[index];
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  void _notificationHandler(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return NotificationScreen();
    }));
  }

  void _settingsHandler(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return const SettingsScreen();
    }));
  }
}
