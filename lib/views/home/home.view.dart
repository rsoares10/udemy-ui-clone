import 'package:cross_platform_app/break-points.dart';
import 'package:cross_platform_app/views/home/widgets/app-bar-section/mobile-app-bar.widget.dart';
import 'package:cross_platform_app/views/home/widgets/app-bar-section/web-app-bar.widget.dart';
import 'package:cross_platform_app/views/home/widgets/sections/advantages-section/advantages-section.widget.dart';
import 'package:cross_platform_app/views/home/widgets/sections/course-section/courses-section.widget.dart';
import 'package:cross_platform_app/views/home/widgets/sections/top-section/top-section.widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: constraints.maxWidth < mobileBreakPoint
              ? PreferredSize(
                  preferredSize: Size(double.infinity, 55.0),
                  child: MobileAppBar(),
                )
              : PreferredSize(
                  preferredSize: Size(double.infinity, 72.0),
                  child: WebAppBar(),
                ),
          drawer: constraints.maxWidth < mobileBreakPoint ? Drawer() : null,
          body: Align(
            alignment: Alignment.center,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1400),
              child: ListView(
                children: <Widget>[
                  TopSection(),
                  AdvantagesSection(),
                  CoursesSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
