import 'package:flutter/material.dart';

import 'app_bar.dart';

class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72.0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Row(
          children: [
            Text('Flutter'),
            const SizedBox(width: 32.0),
            WebAppBarResponsiveContent(),
            const SizedBox(width: 16.0),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
            ),
            const SizedBox(width: 16.0),
            SizedBox(
              height: 38.0,
              width: 120.0,
              child: OutlineButton(
                onPressed: () {},
                child: Text('Fazer login'),
                textColor: Colors.white,
                borderSide: BorderSide(color: Colors.white, width: 2.0),
              ),
            ),
            const SizedBox(width: 18.0),
            SizedBox(
              height: 40.0,
              width: 120.0,
              child: RaisedButton(
                onPressed: () {},
                child: Text('Cadastre-se'),
                color: Colors.white,
                textColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
