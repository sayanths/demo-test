import 'dart:async';

import 'package:flutter/material.dart';
import 'package:user_fetching_demo/routes/routes.dart';

class SplashController extends ChangeNotifier {
  SplashController() {
    Timer(const Duration(seconds: 3), () {
      Routes.push(screen: "/HomeView");
    });
  }
}
