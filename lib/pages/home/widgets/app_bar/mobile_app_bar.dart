import 'package:flutter/material.dart';

class MobileAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Text('Flutter'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart),
        )
      ],
    );
  }
}
