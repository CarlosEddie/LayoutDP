import 'package:flutter/material.dart';

import '../constant.dart';

class MyLoginScreen extends StatelessWidget {
  const MyLoginScreen({Key? key}) : super(key: key);

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
              children: const [
                Image(
                  image: AssetImage("assets/images/dpLogo.png"),
                  height: 127.36,
                  width: 241,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
