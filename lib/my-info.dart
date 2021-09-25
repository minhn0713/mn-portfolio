import 'package:flutter/material.dart';
import 'package:mn_portfolio/info-items.dart';

class SelfInfo extends StatelessWidget {
  const SelfInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.2,
      child: Container(
        color: Colors.grey,
        child: Column(
          children: [
            Spacer(),
            CircleAvatar(
              radius: 50,
            ),
            Spacer(),
            Text(
              "Minh Nguyen",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              "Student at UMass Lowell",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
