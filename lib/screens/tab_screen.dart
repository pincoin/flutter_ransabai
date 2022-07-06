import 'package:flutter/material.dart';
import 'package:flutter_ransabai/screens/search_screen.dart';

import './favorite_screen.dart';
import './home_screen.dart';
import './my_page_screen.dart';
import './order_screen.dart';
import '../common/constants.dart';
import '../widgets/my_app_bar.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int currentIndex = 0;

  final _screens = [
    const HomeScreen(),
    const FavoriteScreen(),
    const SearchScreen(),
    const OrderScreen(),
    const MyPageScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(currentIndex),
      body: _screens[currentIndex],
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
