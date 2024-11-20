import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_pack/screens/bottom_nav_bar_modules/home/home_screen.dart';
import 'package:go_router_pack/screens/bottom_nav_bar_modules/profile/profile_screen.dart';
import 'package:go_router_pack/screens/bottom_nav_bar_modules/setting/setting_screen.dart';

class BottomNavBarScreen extends StatelessWidget {



  const BottomNavBarScreen(this.navigationShell, {super.key});

  /// The navigation shell and container for the branch Navigators.
  final StatefulNavigationShell navigationShell;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        onTap: _onTap,
        items: items,
      ),
    );
  }

  void _onTap(index) {
    navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
