import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/src/config/utils/commons.dart';
import 'package:food_app/src/config/values/colors.dart' as color;
import 'package:food_app/src/config/values/strings.dart';

class SelectTypeSectionWidget extends StatelessWidget {
  const SelectTypeSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child  : SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children         : [
            Expanded(
              child: _typeSection(
                context,
                color    : color.Colors.greenLight,
                icon     : FontAwesomeIcons.starHalf,
                iconColor: color.Colors.green,
                text     : Strings.specialMenu,
              ),
            ),
            _typeSection(
              context,
              color    : color.Colors.redLight,
              icon     : FontAwesomeIcons.solidClock,
              iconColor: color.Colors.red,
              text     : Strings.bookATable,
            ),
            _typeSection(
              context,
              color    : color.Colors.blueLight,
              icon     : FontAwesomeIcons.solidFaceLaugh,
              iconColor: color.Colors.blue,
              text     : Strings.catering,
            )
          ],
        ),
      ),
    );
  }

  Widget _typeSection(BuildContext context, {color = Color, icon = IconData, iconColor = Color, text = String}) {
    return Material(
      color: color,
      child: InkWell(
        onTap: () { Commons.onTapMenu(context, text: text); },
        child: SizedBox(
          height: 92,
          width : 120,
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children         : [
              Icon(
                icon,
                color: iconColor,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                text,
                style: TextStyle(color: iconColor, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}