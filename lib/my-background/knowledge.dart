import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mn_portfolio/constants.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({
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
            "Knowledge",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Text(
          "Flutter/Dart",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Linux/Unix Application Development",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "GIT",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Microsoft Office",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
