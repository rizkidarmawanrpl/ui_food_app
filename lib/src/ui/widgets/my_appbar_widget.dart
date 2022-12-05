import 'package:flutter/material.dart';

class MyAppbarWidget extends StatelessWidget {
  const MyAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SizedBox(
        height: 60.0,
        child : Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child  : Row(
            mainAxisAlignment : MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children          : [
              Column(
                children: const [
                  Icon(Icons.home),
                  Text('Home', style: TextStyle(fontSize: 12.0))
                ],
              ),
              Column(
                children: const [
                  Icon(Icons.search, color: Colors.black45),
                  Text('Search', style: TextStyle(fontSize: 12.0))
                ],
              ),
              Container(
                width: 100.0,
              ),
              Column(
                children: const [
                  Icon(Icons.shop, color: Colors.black45),
                  Text(
                    'Wishlist',
                    style: TextStyle(fontSize: 12.0),
                  )
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.black45,
                  ),
                  Text('Cart', style: TextStyle(fontSize: 12.0))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}