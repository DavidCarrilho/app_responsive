import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.network(
          'https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w940',
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(height: 4.0),
        Text(
          'Curso de FLutter, para a criação de aplicativos Android e IOS',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14.0),
        ),
        const SizedBox(height: 4.0),
        Text(
          'DavDev',
          style: TextStyle(color: Colors.grey),
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
