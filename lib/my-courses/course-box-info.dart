import 'package:flutter/material.dart';
import 'package:mn_portfolio/constants.dart';
import 'package:mn_portfolio/my-courses/courses.dart';

class CourseBox extends StatelessWidget {
  const CourseBox({
    Key? key,
    required this.course,
  }) : super(key: key);

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color: Colors.blueGrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            course.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Spacer(),
          Text(
            course.desc!,
            maxLines: 4,
            style: TextStyle(
              height: 2,
            ),
          ),
          Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              "Read More >>",
              style: TextStyle(
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
