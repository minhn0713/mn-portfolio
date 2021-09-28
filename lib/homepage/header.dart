import 'package:flutter/material.dart';
import 'package:mn_portfolio/constants.dart';
import 'package:mn_portfolio/my-courses/my-courses.dart';
import 'package:mn_portfolio/my-projects/my-projects.dart';
import 'homepage.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePage(
      children: [
        AspectRatio(
          aspectRatio: 3,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                "assets/images/bg.jpg",
                fit: BoxFit.cover,
              ),
              Container(
                color: darkColor.withOpacity(0.5),
              ),
            ],
          ),
        ),
        MyProjects(),
        SizedBox(height: 15),
        MyCourses(),
      ],
    );
  }
}
