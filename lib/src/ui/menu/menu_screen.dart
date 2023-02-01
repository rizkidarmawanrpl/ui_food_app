import 'package:flutter/material.dart';
import 'package:food_app/src/config/values/colors.dart' as color;
import 'package:food_app/src/controllers/menu_controller.dart';
import 'package:food_app/src/routing/routes.dart';
import 'package:get/get.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({super.key});

  final MenuController menuController = Get.put(MenuController());
  final arg = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading        : const BackButton(),
        backgroundColor: color.Colors.yellowIcon,
        title          : const Text('Menu'),
        elevation      : 4,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children         : [
          Center(
            child: Obx(() => Text("${arg['name']} - ${menuController.count}")),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                menuController.updateCount();
              },
              child: const Text('+')),
          const SizedBox(height: 10),
          ElevatedButton(
              onPressed: () async {
                var result = await Get.toNamed(
                  "${Routes.detail}/12345",
                  arguments: {
                    'lastCountDetail': menuController.countDetail
                  },
                ) ?? menuController.countDetail;

                menuController.countDetail = result;
              },
              child: const Text('Detail')),
        ],
      ),
    );
  }
}
