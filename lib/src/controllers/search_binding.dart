import 'package:food_app/src/controllers/search_controller.dart';
import 'package:food_app/src/repository/user_repo.dart';
import 'package:get/get.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(UserRepo());
    Get.put(SearchController());
  }
}