import 'package:flutter/material.dart';
import 'package:go_router_pack/routing/router.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Go Router",
      routerConfig: router,
    );
  }

}
