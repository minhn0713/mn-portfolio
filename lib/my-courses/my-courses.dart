import 'package:flutter/material.dart';
import 'package:mn_portfolio/constants.dart';
import 'package:mn_portfolio/my-courses/course-box-info.dart';
import 'package:mn_portfolio/my-courses/courses.dart';

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
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: courseInfo.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.3,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
          ),
          itemBuilder: (context, index) => CourseBox(
            course: courseInfo[index],
          ),
        ),
      ],
    );
  }
}
