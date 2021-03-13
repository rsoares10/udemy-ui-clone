import 'package:cross_platform_app/break-points.dart';
import 'package:cross_platform_app/views/home/widgets/course-item/course-item.widget.dart';
import 'package:flutter/material.dart';

class CoursesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return GridView.builder(
          padding: EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: constraints.maxWidth >= tabletBreakPoint ? 0.0 : 16.0,
          ),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300.0,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
          ),
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (_, index) {
            return CourseItem();
          },
        );
      },
    );
  }
}
