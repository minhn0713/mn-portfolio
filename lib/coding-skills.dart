import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mn_portfolio/constants.dart';

class CodingSkills extends StatelessWidget {
  const CodingSkills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Text(
          "Dart",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "C",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "C++",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Java",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
