import 'package:flutter/material.dart';
import 'package:mn_portfolio/constants.dart';
import 'package:mn_portfolio/my-projects/projects.dart';
import 'package:mn_portfolio/responsive.dart';

class ProjectBox extends StatelessWidget {
  const ProjectBox({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color: Colors.blueGrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Spacer(),
          Text(
            project.desc!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
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
