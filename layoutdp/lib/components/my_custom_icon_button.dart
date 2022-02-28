import 'package:flutter/material.dart';


class MyCustomIconButton extends StatelessWidget {
  final double width;
  final double height;
  final Icon icon;
  final Color background;
  final Color borderColor;
  final double radius;
  const MyCustomIconButton({
    Key? key,
    required this.width,
    required this.height,
    required this.icon,
    required this.background,
    required this.borderColor,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: background,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: (
        IconButton(
          onPressed: () {}, 
          icon: icon
        )
      ),
    );
  }
}