import 'package:flutter/material.dart';
import 'package:mn_portfolio/my-background/background-info.dart';
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
          BackgroundInfo(),
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
