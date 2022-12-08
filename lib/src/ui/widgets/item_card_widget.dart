import 'package:flutter/material.dart';
import 'package:food_app/src/config/values/strings.dart';
import 'package:food_app/src/config/values/colors.dart' as color;

class ItemCardWidget extends StatelessWidget {
  final String persen;
  final String desc;

  const ItemCardWidget({super.key, required this.persen, required this.desc});

  final double itemCardHeight = 160;
  final double itemCardWidth  = 300;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child  : Container(
        height    : itemCardHeight,
        width     : itemCardWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image       : const DecorationImage(
            image: NetworkImage(Strings.meatImage),
            fit  : BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Container(
              height    : itemCardHeight,
              width     : itemCardWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient    : LinearGradient(
                  colors: [Colors.black, Colors.black.withOpacity(0.01)],
                  begin : Alignment.bottomCenter,
                  end   : Alignment.topCenter
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child  : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children          : [
                  const Spacer(),
                  Text(
                    _persenOff(persen),
                    style: const TextStyle(
                      color        : color.Colors.yellowText,
                      fontWeight   : FontWeight.bold,
                      fontSize     : 24,
                      letterSpacing: 1.1,
                    ),
                  ),
                  Text(
                    _persenDesc(desc),
                    style: const TextStyle(
                      color        : Colors.white,
                      fontSize     : 16,
                      letterSpacing: 1.1,
                    ),
                  ),
                ],
              ),
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.amber[300],
                onTap: () => {},
                child: Ink(
                  width : itemCardWidth,
                  height: itemCardHeight,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _persenOff(String text) {
    return "$text% OFF";
  }

  String _persenDesc(String text) {
    return "On First $text Orders".toUpperCase();
  }
}