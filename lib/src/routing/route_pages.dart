import 'package:food_app/src/controllers/search_binding.dart';
import 'package:food_app/src/routing/routes.dart';
import 'package:food_app/src/ui/detail/detail_screen.dart';
import 'package:food_app/src/ui/home/home_screen.dart';
import 'package:food_app/src/ui/menu/menu_screen.dart';
import 'package:food_app/src/ui/search/search_screen.dart';
import 'package:get/get.dart';

class RoutePages {
  static final List<GetPage<dynamic>> pages = [
    GetPage(
      name: Routes.home,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name      : Routes.menu,
      page      : () => MenuScreen(),
      transition: Transition.fade,
    ),
    GetPage(
      name      : "${Routes.detail}/:ids",
      page      : () => DetailScreen(),
      transition: Transition.fade,
    ),
    GetPage(
      name      : Routes.search,
      page      : () => SearchScreen(),
      // binding   : SearchBinding(),
      transition: Transition.fade,
    ),
  ];
}
