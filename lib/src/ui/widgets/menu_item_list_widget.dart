import 'package:flutter/material.dart';
import 'package:food_app/src/config/values/strings.dart';
import 'menu_item_widget.dart';

class MenuItemListWidget extends StatelessWidget {
  const MenuItemListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child  : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children          : const [
          Text(
            Strings.popularDishes,
            style: TextStyle(fontSize: 22, color: Colors.black54),
          ),
          SizedBox(height: 16),
          MenuItemWidget(),
          MenuItemWidget(),
        ],
      ),
    );
  }
}