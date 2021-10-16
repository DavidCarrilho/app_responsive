// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:app_responsive/core/breakpoints.dart';
import 'package:app_responsive/pages/home/widgets/couse_item%20copy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CourseSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (context, index) {
          return CourseItem();
        },
        padding: EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: constraints.maxWidth >= tabletBreakpoint ? 0.0 : 16.0),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 14.0,
            mainAxisSpacing: 14.0),
      );
    });
  }
}
