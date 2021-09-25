import 'package:flutter/material.dart';
import 'package:mn_portfolio/constants.dart';

import 'my-info.dart';

class InfoIMenu extends StatelessWidget {
  const InfoIMenu({
    Key key,
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
            ),
          ),
        ],
      ),
    );
  }
}
