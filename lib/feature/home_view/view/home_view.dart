import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_fetching_demo/feature/home_view/view_model/home_provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HomeProvider>().getUserListFun();
    return const Scaffold(
      body: Column(),
    );
  }
}
