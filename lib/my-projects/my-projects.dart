import 'package:flutter/material.dart';
import 'package:mn_portfolio/constants.dart';
import 'package:mn_portfolio/my-projects/project-box-info.dart';
import 'package:mn_portfolio/my-projects/projects.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: projectInfo.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.3,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
          ),
          itemBuilder: (context, index) => ProjectBox(
            project: projectInfo[index],
          ),
        ),
      ],
    );
  }
}
