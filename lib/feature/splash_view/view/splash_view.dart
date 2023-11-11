import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_fetching_demo/core/color/color.dart';
import 'package:user_fetching_demo/feature/splash_view/view_model/splash_controller.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<SplashController>();
    return Scaffold(
      backgroundColor: Apc.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Center(
            child: Text("SplasH vIEW"),
          ),
        ],
      ),
    );
  }
}
