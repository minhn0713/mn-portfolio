import 'package:flutter/material.dart';
import 'package:mn_portfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

class PastEducation extends StatelessWidget {
  const PastEducation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Education",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Lowell High School",
                style: TextStyle(color: Colors.blue),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    var url = "https://www.lowell.k12.ma.us/";
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Middlesex Community College",
                style: TextStyle(color: Colors.blue),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    var url = "https://www.middlesex.mass.edu/";
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "University of Massachusetts",
                style: TextStyle(color: Colors.blue),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    var url = "https://www.uml.edu/";
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
                  },
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
