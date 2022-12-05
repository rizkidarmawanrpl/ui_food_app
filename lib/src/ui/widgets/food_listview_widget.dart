import 'package:flutter/material.dart';

import 'item_card_widget.dart';

class FoodListviewWidget extends StatelessWidget {
  const FoodListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child  : SizedBox(
        height: 160.0,
        child : ListView(
          scrollDirection: Axis.horizontal,
          children       : const [
            ItemCardWidget(),
            ItemCardWidget(),
            ItemCardWidget(),
            ItemCardWidget(),
          ],
        ),
      ),
    );
  }
}