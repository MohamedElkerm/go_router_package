import 'package:go_router/go_router.dart';
import 'package:go_router_pack/routing/app_routes.dart';
import 'package:go_router_pack/screens/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'package:go_router_pack/screens/profile_details/profile_details_screen.dart';

import '../screens/bottom_nav_bar_modules/home/home_screen.dart';
import '../screens/bottom_nav_bar_modules/profile/profile_screen.dart';
import '../screens/bottom_nav_bar_modules/setting/setting_screen.dart';
import '../screens/sigin_in/sigin_in_screen.dart';

final GoRouter router = GoRouter(
  // initialLocation: '/home',
  routes: [
    GoRoute(
      name: AppRoutesName.loginScreen,
      path: AppRoutes.loginScreen,
      builder: (context, state) {
        return const SiginInScreen();
      },
    ),
    GoRoute(
      name: AppRoutesName.bottomNavBarScreen,
      path: AppRoutes.bottomNavBarScreen,
      builder: (context, state) {
        return const BottomNavBarScreen();
      },
      routes: [
        GoRoute(
          name: AppRoutesName.profileDetailsScreen,
          path: AppRoutes.profileDetailsScreen,
          builder: (context, state) {
            return const ProfileDetailsScreen();
          },
        ),
      ],
    ),
    // GoRoute(
    //     name: AppRoutesName.homeScreen,
    //     path: AppRoutes.homeScreen,
    //     builder: (context, state) {
    //       return const HomeScreen();
    //     },
    //     routes: [
    //       GoRoute(
    //           name: AppRoutesName.profileScreen,
    //           path: AppRoutes.profileScreen,
    //           builder: (context, state) {
    //             return const ProfileScreen();
    //           },
    //           routes: [
    //             GoRoute(
    //               name: AppRoutesName.profileDetailsScreen,
    //               path: AppRoutes.profileDetailsScreen,
    //               builder: (context, state) {
    //                 return const ProfileDetailsScreen();
    //               },
    //             ),
    //           ]),
    //     ]),
  ],
);
