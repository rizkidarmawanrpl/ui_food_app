import 'package:get/get.dart';

class DetailController extends GetxController {
  static DetailController get to => Get.find();
  var arg = Get.arguments;

  int countSimple = 0;
  
  @override
  void onInit() {
    countSimple = arg['lastCountDetail'];

    updateCount();

    super.onInit();
  }
  
  updateCount() {
    countSimple++;

    update();
  }
}