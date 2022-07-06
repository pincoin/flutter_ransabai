import 'package:flutter/material.dart';

import '../common/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final _appBars = [
    AppBar(
      title: const Text(titleHome),
      centerTitle: true,
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
            border: InputBorder.none),
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
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: titleHome,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: titleFavorite,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: titleSearch,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: titleOrders,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
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
