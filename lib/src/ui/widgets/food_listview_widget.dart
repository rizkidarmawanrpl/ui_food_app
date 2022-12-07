import 'package:flutter/material.dart';

import 'item_card_widget.dart';

class FoodListviewWidget extends StatelessWidget {
  const FoodListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child  : SizedBox(
        height: 160,
        child : ListView(
          scrollDirection: Axis.horizontal,
          children       : const [
            ItemCardWidget(persen: '25', desc: '1'),
            ItemCardWidget(persen: '99.9', desc: '2'),
            ItemCardWidget(persen: '10', desc: '3'),
            ItemCardWidget(persen: '25', desc: '4'),
          ],
        ),
      ),
    );
  }
}