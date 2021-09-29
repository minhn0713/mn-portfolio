import 'package:flutter/material.dart';
import 'package:mn_portfolio/constants.dart';
import 'package:mn_portfolio/my-courses/course-box-info.dart';
import 'package:mn_portfolio/my-courses/courses.dart';
import 'package:mn_portfolio/responsive.dart';

class MyCourses extends StatelessWidget {
  const MyCourses({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Courses",
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(height: defaultPadding),
        Responsive(
          mobile: CoursesGridView(
            crossAxisCount: 1,
            childAspectRatio: 1.5,
          ),
          mobileLarge: CoursesGridView(crossAxisCount: 2),
          tablet: CoursesGridView(childAspectRatio: 1.1),
          desktop: CoursesGridView(),
        ),
      ],
    );
  }
}

class CoursesGridView extends StatelessWidget {
  const CoursesGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: courseInfo.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => CourseBox(
        course: courseInfo[index],
      ),
    );
  }
}
