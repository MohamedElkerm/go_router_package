import 'dart:developer';

import 'package:flutter/material.dart';

class MyRouterObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log('{push} my new route is : ${route} \n my previous route is : ${previousRoute}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    log('{pop} my new route is : $route \n my previous route is : $previousRoute');
  }
}