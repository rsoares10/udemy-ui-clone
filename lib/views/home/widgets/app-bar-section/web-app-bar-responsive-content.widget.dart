import 'package:flutter/material.dart';

class WebAppBarResponsiveContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 45.0,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    border: Border.all(color: Colors.grey.shade600),
                  ),
                  child: Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 4.0,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                        color: Colors.grey.shade500,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Pesquise alguma coisa aqui',
                            isCollapsed: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (constraints.maxWidth >= 400.0) ...[
                const SizedBox(
                  width: 32.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Aprender',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
              if (constraints.maxWidth >= 500) ...[
                const SizedBox(
                  width: 8.0,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Aprender',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ],
          );
        },
      ),
    );
  }
}
