import 'package:flutter/material.dart';
import 'package:food_app/src/config/values/strings.dart';
import 'package:food_app/src/config/values/colors.dart' as color;

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({super.key});

  final double borderRadius = 10;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
      ),
      margin: const EdgeInsets.only(bottom: 15),
      child : Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children          : [
              Container(
                height    : 100,
                width     : 100,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    fit  : BoxFit.cover,
                    image: NetworkImage(Strings.burgerImage)
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft   : Radius.circular(borderRadius),
                    bottomLeft: Radius.circular(borderRadius)
                  ),
                  color: color.Colors.yellowIcon,
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
                          borderRadius: BorderRadius.only(topRight: Radius.circular(borderRadius))
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
                            Text(Strings.itemFoodStarVal)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    const Text(
                      Strings.itemFoodTitleVal,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 200.0,
                      child: Text(
                        Strings.itemFoodDescVal,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style   : TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor : Colors.amber[300],
              borderRadius: BorderRadius.circular(10),
              child       : Ink(height: 100, width: (MediaQuery.of(context).size.width)),
              onTap       : () {},
            ),
          ),
        ],
      ),
    );
  }
}