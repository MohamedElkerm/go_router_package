import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_pack/routing/app_routes.dart';

class SiginInScreen extends StatelessWidget {
  const SiginInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go(
              AppRoutes.homeScreen,
            );
          },
          child: const Text(
            "navigate to Home Screen",
          ),
        ),
      ),
    );
  }
}
