import 'package:cross_platform_app/views/home/widgets/app-bar-section/web-app-bar-responsive-content.widget.dart';
import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72.0,
      title: Row(
        children: [
          Text('Flutter'),
          const SizedBox(
            width: 32.0,
          ),
          WebAppBarResponsiveContent(),
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
          const SizedBox(width: 20.0),
          SizedBox(
            height: 38.0,
            child: OutlinedButton(
              onPressed: () {},
              // borderSide: BorderSide(color: Colors.white, width: 2.0),
              child: Text(
                'Fzer Login ',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          SizedBox(
            height: 40.0,
            child: ElevatedButton(
              onPressed: () {},
              // color: Colors.white,
              child: Text(
                'Cadastre-se',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
