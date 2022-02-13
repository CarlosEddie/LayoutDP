import 'package:flutter/material.dart';
import 'package:layoutdp/components/my_login_button.dart';

import '../constant.dart';

class MyLoginScreen extends StatelessWidget {
  const MyLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Align(
                alignment: Alignment.center,
                child: Image(
                  image: AssetImage("assets/images/dpLogo.png"),
                  height: 127.36,
                  width: 241,
                ),
              ),
              MyLoginButton(
                width: 273, 
                height: 62, 
                text: 'Sign up with Email',
                background: deepBlue, 
                textColor: Colors.white,
              ),
              MyLoginButton(
                width: 273, 
                height: 62, 
                text: 'Sign up with Email',
                background: Colors.white, 
                textColor: Color(0xFF707375),
              ),
              Text("data")
            ],
          ),
        ),
      ),
    );
  }
}
