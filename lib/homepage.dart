import 'package:flutter/material.dart';

import 'info-items.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: InfoIMenu(),
          ),
          Expanded(
            flex: 7,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
