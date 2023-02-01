import 'package:food_app/src/models/user_model.dart';
import 'package:food_app/src/repository/user_repo.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  static SearchController get to => Get.find();

  RxString      fullName  = ''.obs;
  RxBool        isLoading = true.obs;
  RxBool        isError   = false.obs;
  RxString      errmsg    = "".obs;
  Rx<UserModel> userData  = UserModel().obs;

  @override
  void onInit() {
    loadUser();
    super.onInit();
  }

  Future<Rx<UserModel>> loadUser() async {
    isLoading(true);

    try {
      final result = await UserRepo().getUser();

      userData.value = result!;
      fullName("${result.firstName} ${result.lastName}");
      isLoading(false);
      isError(false);

      return userData;
    } catch(e) {
      isLoading(false);
      isError(true);
      errmsg(e.toString());
      throw Exception(e);
    }
  }
}