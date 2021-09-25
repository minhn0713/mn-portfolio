import 'package:flutter/material.dart';

class SelfInfo extends StatelessWidget {
  const SelfInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.2,
      child: Container(
        color: Colors.grey,
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
            ),
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
          ],
        ),
      ),
    );
  }
}
