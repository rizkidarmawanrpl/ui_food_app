import 'package:flutter/material.dart';
import 'package:food_app/src/config/values/strings.dart';
import 'package:food_app/src/config/values/colors.dart' as color;

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child  : Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children          : <Widget>[
          SizedBox(
            height: 100.0,
            width : 100.0,
            child : Image.network(
              Strings.burgerImage,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children          : [
                Container(
                  decoration: BoxDecoration(
                      color       : color.Colors.yellowIcon,
                      borderRadius: BorderRadius.circular(4.0)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical  : 4.0
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.star,
                          size: 15.0,
                        ),
                        Text('4.5')
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Text(
                  'Special Chicken Burger',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 200.0,
                  child: Text(
                    'Chicken, Yogurt, Red chilli, Ginger paste, Carlic paste, ...',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}