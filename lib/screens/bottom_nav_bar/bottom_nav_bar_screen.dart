import 'package:flutter/material.dart';
import 'package:go_router_pack/screens/bottom_nav_bar_modules/home/home_screen.dart';
import 'package:go_router_pack/screens/bottom_nav_bar_modules/profile/profile_screen.dart';
import 'package:go_router_pack/screens/bottom_nav_bar_modules/setting/setting_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  final List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "Profile",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: "Setting",
    ),
  ];

  final List screens = const [
    HomeScreen(),
    ProfileScreen(),
    SettingScreen(),
  ];

  int _curIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_curIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _curIndex,
        onTap: (newIndex){
          setState(() {
            _curIndex = newIndex;
          });
        },
        items: items,
      ),
    );
  }
}
