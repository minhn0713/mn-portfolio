import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Row(
        children: [
          Expanded(
            child: SingleChildScrollView(),
          ),
        ],
      ),
    );
  }
}
