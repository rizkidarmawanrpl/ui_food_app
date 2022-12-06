import 'package:flutter/material.dart';
import 'package:food_app/src/config/values/strings.dart';
import 'package:food_app/src/config/values/colors.dart' as color;

class ItemCardWidget extends StatelessWidget {
  const ItemCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child  : Container(
        height    : 160.0,
        width     : 300.0,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(Strings.meatImage),
            fit  : BoxFit.cover
          ),
        ),
        child: Stack(
          children: [
            Container(
              height    : 160.0,
              width     : 300.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black.withOpacity(0.1), Colors.black],
                      begin : Alignment.topCenter,
                      end   : Alignment.bottomCenter)),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child  : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children          : const [
                  Spacer(),
                  Text(
                    '25% OFF',
                    style: TextStyle(
                      color        : color.Colors.yellowText,
                      fontWeight   : FontWeight.bold,
                      fontSize     : 24.0,
                      letterSpacing: 1.1,
                    ),
                  ),
                  Text(
                    'ON FIRST 3 ORDERS',
                    style: TextStyle(
                      color        : Colors.white,
                      fontSize     : 16.0,
                      letterSpacing: 1.1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}