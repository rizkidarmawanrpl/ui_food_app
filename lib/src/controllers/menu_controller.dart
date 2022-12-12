import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController get to => Get.find();

  RxInt count       = 0.obs;
  int   countDetail = 0;

  void updateCount() {
    count.value++;
  }
}