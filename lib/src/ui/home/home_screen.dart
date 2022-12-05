import 'package:flutter/material.dart';

import '../widgets/food_listview_widget.dart';
import '../widgets/menu_item_list_widget.dart';
import '../widgets/my_action_budget_widget.dart';
import '../widgets/my_app_bar_widget.dart';
import '../widgets/my_appbar_widget.dart';
import '../widgets/select_type_section_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton        : const MyActionButtonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar         : const MyAppbarWidget(),
      body                        : ListView(
        children: const [
          SizedBox(height: 16.0),
          MyAppBarWidget(),
          SizedBox(height: 16.0),
          FoodListviewWidget(),
          SizedBox(height: 16.0),
          SelectTypeSectionWidget(),
          SizedBox(height: 16.0),
          MenuItemListWidget()
        ],
      ),
    );
  }
}