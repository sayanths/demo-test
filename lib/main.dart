import 'package:user_fetching_demo/feature/splash_view/view/splash_view.dart';
import 'package:user_fetching_demo/provider/provider.dart';
import 'package:user_fetching_demo/responsive/responsive.dart';
import 'package:user_fetching_demo/routes/pop_up.dart';
import 'package:user_fetching_demo/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  runApp(
    const MyApp(),
  );
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderApp(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return OrientationBuilder(
            builder: (context, orientation) {
              Responsive().init(constraints, orientation);
              return MaterialApp(
                routes: Routes().route,
                scaffoldMessengerKey: Messenger.messengerKey,
                navigatorKey: Routes.routeKey,
                debugShowCheckedModeBanner: false,
                title: 'Public App',
                home: const SplashView(),
              );
            },
          );
        },
      ),
    );
  }
}
