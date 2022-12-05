import 'package:flutter/material.dart';

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
                'Location',
                style: TextStyle(color: Colors.black54),
              ),
              Text(
                'Kab. Bogor',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}