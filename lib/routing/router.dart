import 'package:go_router/go_router.dart';
import 'package:go_router_pack/routing/app_routes.dart';

import '../screens/bottom_nav_bar_modules/home/home_screen.dart';
import '../screens/bottom_nav_bar_modules/profile/profile_screen.dart';
import '../screens/bottom_nav_bar_modules/setting/setting_screen.dart';
import '../screens/sigin_in/sigin_in_screen.dart';

final GoRouter router = GoRouter(
  // initialLocation: '/home',
  routes: [
    GoRoute(
      path: AppRoutes.loginScreen,
      builder: (context, state) {
        return const SiginInScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.profileScreen,
      builder: (context, state) {
        return const ProfileScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.homeScreen,
      builder: (context, state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.settingScreen,
      builder: (context, state) {
        return const SettingScreen();
      },
    ),
  ],
);
