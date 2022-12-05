import 'package:flutter/material.dart';
import 'package:flutter_polygon_clipper/flutter_polygon_clipper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/src/config/values/colors.dart' as color;

class MyActionButtonWidget extends StatelessWidget {
  const MyActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      width : 100.0,
      child : FlutterClipPolygon(
        sides       : 6,
        borderRadius: 0.0,   // Defaults to 0.0 degrees
        rotate      : 0.0,   // Defaults to 0.0 degrees
        boxShadows  : [
          PolygonBoxShadow(color: Colors.red, elevation: 1.0),
          PolygonBoxShadow(color: Colors.grey, elevation: 5.0)
        ],
        child: Container(
          color: color.Colors.yellowText,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children         : const <Widget>[
              Icon(FontAwesomeIcons.book),
              SizedBox(height: 4.0),
              Text(
                'Menu',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}