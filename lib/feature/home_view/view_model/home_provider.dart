import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:user_fetching_demo/core/base_url/base_url.dart';
import 'package:user_fetching_demo/core/url/url.dart';
import 'package:user_fetching_demo/feature/home_view/model/user_model.dart';

class HomeProvider extends ChangeNotifier {
  HomeProvider() {
    getUserListFun();
  }

  // UserModel? getUserList;

  // Future<void> getUserListFun() async {
  //   List response = await BaseClient.get(Url.baseUrl);
  //   if (response[0] >= 200 && response[0] < 300) {
  //     final data = UserModel.fromJson(response[1]);
  //     getUserList = data;
  //     notifyListeners();
  //     log("${getUserList.toString()}==========");
  //   }
  //   notifyListeners();
  // }
  List<UserModel>? getUserList; 
  Future<void> getUserListFun() async {
  List response = await BaseClient.get(Url.baseUrl);
  if (response[0] >= 200 && response[0] < 300) {
    final List<dynamic> responseData = response[1];
    final List<UserModel> userList = responseData.map((json) => UserModel.fromJson(json)).toList();
    
    // Assuming you want to store the entire list
    getUserList = userList;

    notifyListeners();
    log("${getUserList.toString()}==========");
  }
}

}
