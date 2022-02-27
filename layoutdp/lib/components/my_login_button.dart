import 'package:flutter/material.dart';

import '../../constant.dart';

class MyLoginButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final Color background;
  final Color textColor;
  const MyLoginButton({
    Key? key,
    required this.width,
    required this.height,
    required this.text,
    required this.background,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: deepBlue, width: 2),
          borderRadius: BorderRadius.circular(69),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all<double>(0.0),
            fixedSize: MaterialStateProperty.all<Size>(
              Size(width, height),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(background),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(69),
              ),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, "/myHomePageScreen");
          },
          child: Center(
            child: Text(
              text.toUpperCase(),
              style: TextStyle(
                color: textColor,
                fontSize: 18,
                fontFamily: 'Play-Regular',
                fontWeight: FontWeight.w400
              ),
            ),
          ),
        ),
      ),
    );
  }
}
