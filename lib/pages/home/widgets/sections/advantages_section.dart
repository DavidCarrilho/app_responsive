import 'package:flutter/material.dart';

class AdvantagesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buildToAdvantage({required String title, required String subTitle}) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.star,
            color: Colors.white,
            size: 40.0,
          ),
          const SizedBox(width: 8.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                subTitle,
                style: TextStyle(color: Colors.white),
              ),
            ],
          )
        ],
      );
    }

    return Container(
      padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      decoration:
          BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        spacing: 12.0,
        runSpacing: 16.0,
        children: [
          buildToAdvantage(title: '+ 15.000 Alunos', subTitle: 'Didática garantida'),
          buildToAdvantage(title: '+ 25.000 Alunos', subTitle: 'Didática garantida'),
          buildToAdvantage(title: '+ 35.000 Alunos', subTitle: 'Didática garantida'),
        ],
      ),
    );
  }
}
