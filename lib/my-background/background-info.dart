import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mn_portfolio/constants.dart';
import 'package:mn_portfolio/my-background/coding-skills.dart';
import 'package:mn_portfolio/my-background/info-items.dart';
import 'package:mn_portfolio/my-background/knowledge.dart';
import 'package:mn_portfolio/my-background/past-education.dart';
import 'package:url_launcher/url_launcher.dart';

class BackgroundInfo extends StatelessWidget {
  const BackgroundInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
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
    );
  }
}
