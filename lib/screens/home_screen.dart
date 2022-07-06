import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final _appBars = [
    AppBar(
      title: const Text('Home'),
      centerTitle: true,
    ),
    AppBar(
      title: const Text('Favorite'),
      centerTitle: true,
    ),
    AppBar(
      title: const Text('Search'),
      centerTitle: true,
    ),
    AppBar(
      title: const Text('Orders'),
      centerTitle: true,
    ),
    AppBar(
      title: const Text('My Page'),
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
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'MyPage',
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
