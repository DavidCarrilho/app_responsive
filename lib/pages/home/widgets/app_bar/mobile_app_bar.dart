import 'package:flutter/material.dart';

class MobileAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Text('Flutter'),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        const SizedBox(width: 8.0),  
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart),
        ),
        const SizedBox(width: 16.0)
      ],
    );
  }
}
