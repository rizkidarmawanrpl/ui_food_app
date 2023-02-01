import 'package:flutter/material.dart';
import 'package:food_app/src/config/utils/commons.dart';
import 'package:food_app/src/config/values/strings.dart';
import 'package:food_app/src/routing/routes.dart';
import 'package:get/get.dart';

class MyAppbarWidget extends StatelessWidget {
  const MyAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: SizedBox(
        height: 60.0,
        child : Row(
          mainAxisAlignment : MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children          : [
            _menuIcons(
              icon : Icons.home,
              text : Strings.home,
              onTap: () => Commons.onTapDialogMenu(context, text: Strings.home),
            ),
            _menuIcons(
              icon : Icons.search,
              text : Strings.search,
              onTap: () { Get.toNamed(Routes.search); },
            ),
            Container(
              width: 100.0,
            ),
            _menuIcons(
              icon : Icons.shop,
              text : Strings.wishlist,
              onTap: () => Commons.onTapDialogMenu(context, text: Strings.wishlist),
            ),
            _menuIcons(
              icon : Icons.shopping_cart,
              text : Strings.cart,
              onTap: () => Commons.onTapDialogMenu(context, text: Strings.cart),
            ),
          ],
        )
      ),
    );
  }

  Widget _menuIcons({icon = IconData, text = String, onTap = Function}) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap       : onTap,
      child       : Padding(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 15),
        child  : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children         : [
            Icon(
              icon,
              color: Colors.black45,
            ),
            Text(text, style: const TextStyle(fontSize: 12.0))
          ],
        ),
      ),
    );
  }
}