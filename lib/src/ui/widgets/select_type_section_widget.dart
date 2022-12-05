import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/src/config/values/colors.dart' as color;

class SelectTypeSectionWidget extends StatelessWidget {
  const SelectTypeSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child  : SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children         : [
            Expanded(
              child: Container(
                height: 92.0,
                width : 120.0,
                color : color.Colors.greenLight,
                child : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children         : const [
                    Icon(
                      FontAwesomeIcons.starHalf,
                      color: color.Colors.green,
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'Special Menu',
                      style:
                          TextStyle(color: color.Colors.green, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 92.0,
              width : 120.0,
              color : color.Colors.redLight,
              child : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children         : const [
                  Icon(
                    FontAwesomeIcons.solidClock,
                    color: color.Colors.red,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Book a Table',
                    style: TextStyle(color: color.Colors.red, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Container(
              height: 92.0,
              width : 120.0,
              color : color.Colors.blueLight,
              child : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children         : const [
                  Icon(
                    FontAwesomeIcons.solidLaugh,
                    color: color.Colors.blue,
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Caterings',
                    style: TextStyle(color: color.Colors.blue, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}