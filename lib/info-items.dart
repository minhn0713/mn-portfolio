import 'package:flutter/material.dart';
import 'package:mn_portfolio/coding-skills.dart';
import 'package:mn_portfolio/constants.dart';
import 'package:mn_portfolio/past-education.dart';
import 'my-info.dart';

class InfoIMenu extends StatelessWidget {
  const InfoIMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SelfInfo(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  InfoBox(
                    title: "Address",
                    text: "Lowell, MA",
                  ),
                  InfoBox(
                    title: "Current Education",
                    text: "UMass Lowell",
                  ),
                  InfoBox(
                    title: "Major",
                    text: "Computer Science",
                  ),
                  InfoBox(
                    title: "Age",
                    text: "23",
                  ),
                  //Divider(),
                  PastEducation(),
                  CodingSkills(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InfoBox extends StatelessWidget {
  const InfoBox({
    Key? key,
    this.title,
    this.text,
  }) : super(key: key);

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            text!,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
