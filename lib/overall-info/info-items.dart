import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mn_portfolio/overall-info/coding-skills.dart';
import 'package:mn_portfolio/constants.dart';
import 'package:mn_portfolio/overall-info/knowledge.dart';
import 'package:mn_portfolio/overall-info/past-education.dart';
import 'package:url_launcher/url_launcher.dart';
import 'my-info.dart';

class InfoMenu extends StatelessWidget {
  const InfoMenu({
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
                  Knowledge(),
                  Divider(),
                  TextButton(
                    onPressed: () {
                      launch(
                          "https://docs.google.com/document/d/1DIijGViD4-7gA5FWW1K7p4QNjjsp1lDx/edit?usp=sharing&ouid=109571095316197278402&rtpof=true&sd=true");
                    },
                    child: FittedBox(
                      child: Row(
                        children: [
                          Text(
                            "VIEW MY RESUME",
                            style: TextStyle(
                              color: Colors.blueAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: defaultPadding),
                    color: Color(0xFF24242E),
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(
                          onPressed: () async {
                            launch("https://github.com/minhn0713");
                          },
                          icon: SvgPicture.asset("assets/icons/github.svg"),
                        ),
                        IconButton(
                          onPressed: () async {
                            launch(
                                "https://www.linkedin.com/in/minh-nguyen-61594b196/");
                          },
                          icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
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
