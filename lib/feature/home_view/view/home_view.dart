import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_fetching_demo/core/color/color.dart';
import 'package:user_fetching_demo/feature/home_view/model/user_model.dart';
import 'package:user_fetching_demo/feature/home_view/view_model/home_provider.dart';
import 'package:user_fetching_demo/routes/routes.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<HomeProvider>().getUserListFun();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const SizedBox(),
        backgroundColor: Apc.black,
        title: const Text("UserDetails"),
      ),
      body: Consumer<HomeProvider>(
        builder: (context, value, _) => SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: value.getUserList?.length,
                itemBuilder: (context, index) {
                  final data = value.getUserList?[index];
                  return GestureDetector(
                    onTap: () {
                      Routes.pushNonNamed(screen: OverViewPage(data: data));
                    },
                    child: Card(
                      elevation: 3,
                      child: ListTile(
                        title: Text(data?.name ?? ""),
                        subtitle: Text(data?.phone ?? ""),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OverViewPage extends StatelessWidget {
  final UserModel? data;
  const OverViewPage({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [],
      ),
    );
  }
}
