import 'package:flutter/material.dart';
import 'menu_item_widget.dart';

class MenuItemListWidget extends StatelessWidget {
  const MenuItemListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child  : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children          : const [
          Text(
            'Popular Dishes',
            style: TextStyle(fontSize: 22.0, color: Colors.black54),
          ),
          SizedBox(height: 16.0),
          MenuItemWidget(),
          MenuItemWidget(),
        ],
      ),
    );
  }
}