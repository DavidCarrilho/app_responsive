// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/item_course.jpg',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 8.0),
        Text(
          'Curso de Flutter, para a criação de aplicativos Android e IOS',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14.0, height: 1.3),
        ),
        const SizedBox(height: 4.0),
        Text(
          'R\$22,90',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 12.0),
        )
      ],
    );
  }
}
