import 'package:flutter/material.dart';

import '../common/constants.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int currentIndex = 0;

  final _appBars = [
    AppBar(
      title: const Text(titleHome),
      centerTitle: true,
      leading: IconButton(
        icon: const Icon(Icons.notifications_outlined),
        onPressed: () {},
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
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {},
        )
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBars[currentIndex],
      body: Column(
        children: [
          Text('This is my text.'),
          Icon(Icons.login),
          ElevatedButton(
            onPressed: () {},
            child: Text('button'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: titleHome,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: titleFavorite,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: titleSearch,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_outlined),
            label: titleOrders,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: titleMyPage,
          ),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
