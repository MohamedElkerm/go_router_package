import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_pack/routing/app_routes.dart';
import 'package:go_router_pack/screens/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'package:go_router_pack/screens/profile_details/profile_details_screen.dart';

import '../screens/bottom_nav_bar_modules/home/home_screen.dart';
import '../screens/bottom_nav_bar_modules/profile/profile_screen.dart';
import '../screens/bottom_nav_bar_modules/setting/setting_screen.dart';
import '../screens/sigin_in/sigin_in_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _sectionNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  initialLocation: AppRoutes.loginScreen,

  navigatorKey: _rootNavigatorKey,

  routes: [
    GoRoute(
      name: AppRoutesName.loginScreen,
      path: AppRoutes.loginScreen,
      builder: (context , state){
        return const SiginInScreen();
      },
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return BottomNavBarScreen(navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _sectionNavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              name: AppRoutesName.homeScreen,
              path: AppRoutes.homeScreen,
              builder: (context, state) => const HomeScreen(),
            ),
          ],
        ),

        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: AppRoutesName.profileScreen,
              path: AppRoutes.profileScreen,
              builder: (context, state) => const ProfileScreen(),
              routes: <RouteBase>[
                GoRoute(
                  name: AppRoutesName.profileDetailsScreen,
                  path: AppRoutes.profileDetailsScreen,
                  builder: (context, state) => const ProfileDetailsScreen(),
                )
              ],
            ),
          ],
        ),

        // The route branch for 3º Tab
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: AppRoutesName.settingScreen,

              path: AppRoutes.settingScreen,
              builder: (context, state) => const SettingScreen(),
              // routes: <RouteBase>[
              //   GoRoute(
              //     path: 'detail',
              //     builder: (context, state) => const FeedDetailsPage(),
              //   )
              // ],
            ),
          ],
        ),
      ],
    ),
  ],
);
