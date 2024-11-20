import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_pack/screens/bottom_nav_bar_modules/home/home_screen.dart';
import 'package:go_router_pack/screens/bottom_nav_bar_modules/profile/profile_screen.dart';
import 'package:go_router_pack/screens/bottom_nav_bar_modules/setting/setting_screen.dart';
import 'package:go_router_pack/screens/sigin_in/sigin_in_screen.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Go Router",
      routerConfig: _router,
    );
  }

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) {
          return const SiginInScreen();
        },
      ),

      GoRoute(
        path: "/profile",
        builder: (context, state) {
          return const ProfileScreen();
        },
      ),

      GoRoute(
        path: "/home",
        builder: (context, state) {
          return const HomeScreen();
        },
      ),

      GoRoute(
        path: "/setting",
        builder: (context, state) {
          return const SettingScreen();
        },
      ),
    ],
  );
}
