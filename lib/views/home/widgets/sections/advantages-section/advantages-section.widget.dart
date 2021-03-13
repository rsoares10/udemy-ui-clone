import 'package:cross_platform_app/break-points.dart';
import 'package:flutter/material.dart';

class AdvantagesSection extends StatelessWidget {
  Widget _buildHorizontalAdvantage(String title, String subtitle) {
    return Container(
      margin: EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.star,
            color: Colors.white,
            size: 50.0,
          ),
          const SizedBox(width: 8.0),
          Column(
            children: <Widget>[
              Text(title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  )),
              Text(
                subtitle,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildVerticalAdvantage(String title, String subtitle) {
    return Container(
      margin: EdgeInsets.only(top: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.star,
            color: Colors.white,
            size: 50.0,
          ),
          const SizedBox(height: 8.0),
          Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              )),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth >= mobileBreakPoint) {
          return Container(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey),
              ),
            ),
            child: Wrap(
              spacing: 8.0,
              alignment: WrapAlignment.spaceEvenly,
              runSpacing: 16.0,
              children: <Widget>[
                _buildHorizontalAdvantage('+45.000 alunos', 'Didática garantida'),
                _buildHorizontalAdvantage('+45.000 alunos', 'Didática garantida'),
                _buildHorizontalAdvantage('+45.000 alunos', 'Didática garantida'),
              ],
            ),
          );
        }
        return Container(
          padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey),
            ),
          ),
          child: Row(
            children: <Widget>[
              Expanded(child: _buildVerticalAdvantage('+45.000 alunos', 'Didática garantida')),
              Expanded(child: _buildVerticalAdvantage('+45.000 alunos', 'Didática garantida')),
              Expanded(child: _buildVerticalAdvantage('+45.000 alunos', 'Didática garantida')),
            ],
          ),
        );
      },
    );
  }
}
