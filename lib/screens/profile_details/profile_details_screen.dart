import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routing/app_routes.dart';

class ProfileDetailsScreen extends StatelessWidget {
  const ProfileDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Details Screen"),
        centerTitle: true,
      ),

    );
  }
}
