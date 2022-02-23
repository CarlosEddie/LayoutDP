import 'package:flutter/material.dart';

class MyBrandButton extends StatelessWidget {
  final String image;
  final Color background;
  const MyBrandButton({
    Key? key,
    required this.image,
    required this.background,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 101,
        height: 63,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: background,
          image: DecorationImage(
            image: AssetImage(image),
          ),
        ),
      ),
      onTap: () {},
    );
  }
}