import 'package:flutter/material.dart';
import 'package:food_app/src/config/values/strings.dart';
import 'package:food_app/src/config/values/colors.dart' as color;

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children          : [
            Container(
              height: 100,
              width : 100,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(Strings.burgerImage)
                ),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                color: Colors.redAccent,
              ),
              /* child : Image.network(
                Strings.burgerImage,
                fit: BoxFit.fill,
                height: 100,
                width: 100,
              ), */
            ),
            const SizedBox(
              width: 16.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children          : [
                  Container(
                    decoration: const BoxDecoration(
                        color       : color.Colors.yellowIcon,
                        // borderRadius: BorderRadius.only(topRight: Radius.circular(10))
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
      ),
    );
  }
}