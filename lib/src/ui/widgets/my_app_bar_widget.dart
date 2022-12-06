import 'package:flutter/material.dart';
import 'package:food_app/src/config/values/strings.dart';

class MyAppBarWidget extends StatelessWidget {
  const MyAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child  : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children         : [
          const Icon(
            Icons.grid_on,
            color: Colors.grey,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children          : const [
              Text(
                Strings.location,
                style: TextStyle(color: Colors.black54),
              ),
              Text(
                Strings.kabBogor,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}