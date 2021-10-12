import 'package:app_responsive/pages/home/widgets/app_bar/web_app_bar.dart';
import 'package:flutter/material.dart';

import 'home/widgets/app_bar/app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(
            'biggest ${constraints.biggest} smallest ${constraints.smallest}');
        return Scaffold(
          appBar: constraints.maxWidth < 800
              ? PreferredSize(
                  child: MobileAppbar(),
                  preferredSize: Size(double.infinity, 56))
              : PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(double.infinity, 72.0),
                ),
          drawer: constraints.maxWidth < 800 ? Drawer() : null,
        );
      },
    );
  }
}
