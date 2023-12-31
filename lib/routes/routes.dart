import 'package:flutter/material.dart';
import 'package:user_fetching_demo/feature/home_view/view/home_view.dart';

class Routes {
  static final routeKey = GlobalKey<NavigatorState>();

  Map<String, Widget Function(BuildContext)> route = {
    "/HomeView": (context) => const HomeView(),
  };

  static push({
    required var screen,
  }) {
    routeKey.currentState?.pushNamed(screen);
  }

  static pushNamed({
    required String screen,
    String? arguments,
  }) {
    routeKey.currentState?.pushNamed(screen, arguments: arguments);
  }

  static pushNonNamed({required var screen}) {
    routeKey.currentState?.push(
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  static back({bool? value}) {
    routeKey.currentState?.pop();
  }

  static pushReplace({required var screen}) {
    routeKey.currentState?.pushReplacementNamed(screen);
  }

  static pushRemoveUntil({required var screen}) {
    routeKey.currentState?.pushNamedAndRemoveUntil(
      screen,
      (route) => false,
    );
  }

  static sizedAnimationPush({required var screen}) {
    routeKey.currentState?.push(
      PageRouteBuilder(
        pageBuilder: (context, animation, anotherAnimation) {
          return screen;
        },
        transitionDuration: const Duration(milliseconds: 1000),
        transitionsBuilder: (context, animation, anotherAnimation, child) {
          animation =
              CurvedAnimation(curve: Curves.bounceIn, parent: animation);
          return Align(
            child: Align(
              child: SizeTransition(
                sizeFactor: animation,
                axisAlignment: 0.0,
                child: child,
              ),
            ),
          );
        },
      ),
    );
  }

  static pushReplaceNonNamed({required var screen}) {
    routeKey.currentState?.pushReplacement(
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  static pushRemoveUntilNonNamed(Widget screen) {
    routeKey.currentState?.pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => screen),
      (route) => false,
    );
  }
}
