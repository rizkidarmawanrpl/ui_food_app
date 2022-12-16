import 'package:flutter/material.dart';
import 'package:food_app/src/config/values/colors.dart' as color;
import 'package:food_app/src/controllers/detail_controller.dart';
import 'package:food_app/src/controllers/menu_controller.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({super.key});

  final MenuController menuController     = Get.put(MenuController());
  final DetailController detailController = Get.put(DetailController());
  final param                             = Get.parameters;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading        : const BackButton(),
        backgroundColor: color.Colors.yellowIcon,
        title          : const Text('Detail'),
        elevation      : 4,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children         : [
          Center(
              child: Column(
            children: [
              Text("ID : ${param['ids']}"),
              const SizedBox(height: 10),
              Text("Count : ${menuController.count}"),
              GetBuilder<DetailController>(
                builder: (state) => Text("Simple Count : ${state.countSimple.toString()}"),
              ),
              ElevatedButton(
                onPressed: () { detailController.updateCount(); },
                child: const Text('+'),
              ),
              GestureDetector(
                onTap: () {
                  Get.back(result: detailController.countSimple);
                },
                child: const Text('Back Previous'),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
