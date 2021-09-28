import 'package:flutter/material.dart';
import 'package:mn_portfolio/constants.dart';
import 'package:mn_portfolio/my-background/info-items.dart';
import '../my-background/info-items.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.children}) : super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: InfoMenu(),
              ),
              SizedBox(width: defaultPadding),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...children,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
