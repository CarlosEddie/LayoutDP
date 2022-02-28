import 'package:flutter/material.dart';

import '../../constant.dart';
import 'my_custom_icon_button.dart';

class MyNewMovie extends StatelessWidget {
  final String image;
  final String title;
  final String time;
  final String rating;
  const MyNewMovie({
    Key? key,
    required this.image,
    required this.title,
    required this.time,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 189,
          height: 202,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 165.0,
                height: 117.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.black,
                    fontFamily: 'Play-Regular',
                    fontWeight: FontWeight.w400
                    ),
                  ),
                ),
              ),  
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    time,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                      fontFamily: 'Play-Regular',
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  const MyCustomIconButton(
                    width: 40, 
                    height: 38, 
                    icon: Icon (
                      Icons.play_arrow_rounded,
                      color: Colors.white,
                      size: 20,
                    ), 
                    background: deepBlue, 
                    borderColor: deepBlue, 
                    radius: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        rating,
                        style: const TextStyle(
                          fontSize: 12.0,
                          color: Colors.black,
                          fontFamily: 'Play-Regular',
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      const Icon(
                        Icons.star,
                        color: starYellow,
                        size: 14,
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}