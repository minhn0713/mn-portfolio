import 'package:flutter/material.dart';
import 'package:mn_portfolio/projects.dart';

import '../overall-info/info-items.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: InfoMenu(),
          ),
          Expanded(flex: 7, child: Projects()),
        ],
      ),
    );
  }
}
