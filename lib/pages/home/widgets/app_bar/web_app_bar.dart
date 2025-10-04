import 'package:flutter/material.dart';

import 'app_bar.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72.0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Row(
          children: [
            const Text('Flutter'),
            const SizedBox(width: 32.0),
            const WebAppBarResponsiveContent(),
            const SizedBox(width: 16.0),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
            ),
            const SizedBox(width: 16.0),
            SizedBox(
              height: 38.0,
              width: 120.0,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: const BorderSide(color: Colors.white, width: 2.0),
                ),
                child: const Text('Fazer login'),
              ),
            ),
            const SizedBox(width: 18.0),
            SizedBox(
              height: 40.0,
              width: 120.0,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
                child: const Text('Cadastre-se'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
