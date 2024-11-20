import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../routing/app_routes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // context.go(
            //   AppRoutes.profileDetailsNestedScreen,
            // );
          },
          child: const Text(
            "navigate to Profile Details Screen",
          ),
        ),
      ),
    );  }
}
