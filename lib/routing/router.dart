import 'package:go_router/go_router.dart';
import 'package:go_router_pack/routing/app_routes.dart';
import 'package:go_router_pack/screens/profile_details/profile_details_screen.dart';

import '../screens/bottom_nav_bar_modules/home/home_screen.dart';
import '../screens/bottom_nav_bar_modules/profile/profile_screen.dart';
import '../screens/bottom_nav_bar_modules/setting/setting_screen.dart';
import '../screens/sigin_in/sigin_in_screen.dart';

final GoRouter router = GoRouter(
  // initialLocation: '/home',
  routes: [
    GoRoute(
      name:"login" ,
      path: AppRoutes.loginScreen,
      builder: (context, state) {
        return const SiginInScreen();
      },
    ),
    GoRoute(
      name: "home",
      path: AppRoutes.homeScreen,
      builder: (context, state) {
        return const HomeScreen();
      },
      routes: [
        GoRoute(
          name: "profile",
          path: AppRoutes.profileScreen,
          builder: (context, state) {
            return const ProfileScreen();
          },
          routes: [
            GoRoute(
              name: "profileDetails",
              path: AppRoutes.profileDetailsScreen,
              builder: (context, state) {
                return const ProfileDetailsScreen();
              },
            ),

          ]
        ),
      ]

    ),

  ],
);
