import 'package:flutter/material.dart';
import 'package:user_fetching_demo/core/color/color.dart';
import 'package:user_fetching_demo/feature/home_view/model/user_model.dart';
import 'package:user_fetching_demo/feature/home_view/view/home_view.dart';
import 'package:user_fetching_demo/routes/routes.dart';

class OverViewPage extends StatelessWidget {
  final UserModel? data;
  const OverViewPage({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Apc.black,
        elevation: 0,
        title: Text(data?.name ?? ""),
        leading: IconButton(
            onPressed: () {
              Routes.back();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            size10,
            ShowingTextWidget(title: 'Name', subTitle: data?.name ?? ""),
        
            ShowingTextWidget(
                title: 'User Name', subTitle: data?.username ?? ""),
       
            ShowingTextWidget(title: 'Email', subTitle: data?.email ?? ""),
            ShowingTextWidget(
                title: 'Company Name', subTitle: data?.company?.name ?? ""),
            ShowingTextWidget(
                title: 'Suite', subTitle: data?.address?.suite ?? ""),
            ShowingTextWidget(
                title: 'City', subTitle: data?.address?.city ?? ""),
            ShowingTextWidget(
                title: 'Street', subTitle: data?.address?.street ?? ""),
          ],
        ),
      ),
    );
  }
}
