import 'package:flutter/material.dart';

import '../constant.dart';

class MyHomePageScreen extends StatelessWidget {
  const MyHomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: backgroundColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              ],
            ),
          ),
        ),
      ),
    );
  }
}
