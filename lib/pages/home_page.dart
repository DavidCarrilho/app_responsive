import 'package:app_responsive/core/core.dart';
import 'package:flutter/material.dart';

import 'home/widgets/app_bar/app_bar.dart';
import 'home/widgets/sections/sections.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(
            'biggest ${constraints.biggest} smallest ${constraints.smallest}');
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: constraints.maxWidth < mobileBreakpoint
              ? PreferredSize(
                  child: MobileAppbar(),
                  preferredSize: Size(double.infinity, 56),
                )
              : PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(double.infinity, 72.0),
                ),
          drawer: constraints.maxWidth < mobileBreakpoint ? Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1400),
              child: ListView(
                children: [
                  TopSection(),
                  AdvantagesSection()
                ],
              )
            ),
          ),
        );
      },
    );
  }
}
