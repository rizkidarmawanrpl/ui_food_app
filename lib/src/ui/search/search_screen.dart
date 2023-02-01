import 'package:flutter/material.dart';
import 'package:food_app/src/config/values/colors.dart' as color;
import 'package:food_app/src/controllers/search_controller.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  final SearchController searchController = Get.put(SearchController());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading        : const BackButton(),
        backgroundColor: color.Colors.yellowIcon,
        title          : const Text('Search'),
        elevation      : 4,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children         : [
          Center(
            child: Obx(() => searchController.isLoading == true.obs? const CircularProgressIndicator() : Text("Hello, ${searchController.fullName}")),
          ),
        ],
      ),
    );
  }
}