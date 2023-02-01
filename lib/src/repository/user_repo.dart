import 'dart:developer';

import 'package:food_app/src/config/utils/http_service.dart';
import 'package:food_app/src/models/single_user_response.dart';
import 'package:food_app/src/models/user_model.dart';
import 'package:get/get.dart';

class UserRepo {
  late HttpService httpService;

  UserRepo() {
    // httpService = Get.put(HttpService());
    httpService = HttpService();
  }

  Future<UserModel?> getUser() async {
    try {
      final response = await httpService.getRequest("/api/users/2");

      final parsedResponse = SingleUserResponse.fromJson(response.data);

      return parsedResponse.userModel;
    } on Exception catch (e) {
      log(e.toString());
      return null;
    }
  }
}