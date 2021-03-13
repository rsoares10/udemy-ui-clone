import 'package:auto_size_text/auto_size_text.dart';
import 'package:cross_platform_app/app-constants.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Image.network(
          courseItemImage,
          fit: BoxFit.fitWidth,
        ),
        const SizedBox(
          height: 4.0,
        ),
        Flexible(
          child: AutoSizeText(
            'Criação de Apps Android e IOs com Flutter',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          'Rafael Monteiro',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15.0,
          ),
        ),
        Text(
          'R\$20,00',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
