import 'package:flutter/material.dart';
import 'package:flutter_polygon_clipper/flutter_polygon_clipper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/src/config/values/colors.dart' as color;
import 'package:food_app/src/config/values/strings.dart';
import 'package:food_app/src/routing/routes.dart';
import 'package:get/get.dart';

class MyActionButtonWidget extends StatelessWidget {
  const MyActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      width : 100.0,
      child : ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const FlutterPolygonBorder(
            sides       : 4,
            borderRadius: 5.0,
            rotate      : 0.0,
          ),
          foregroundColor: Colors.black,
          backgroundColor: color.Colors.yellowText,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children         : const [
            Icon(FontAwesomeIcons.book),
            SizedBox(height: 8.0),
            Text(
              Strings.menu,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            )
          ],
        ),
        onPressed: () => Get.toNamed(Routes.menu, arguments: {"name": "Rizki", "count": "10"}),
      ),
    );
  }
}