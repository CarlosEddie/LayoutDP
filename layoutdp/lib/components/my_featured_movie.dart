import 'package:flutter/material.dart';

import '../../constant.dart';

class MyFeaturedMovie extends StatelessWidget {

  const MyFeaturedMovie({
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        
        Container(
          color: backgroundColor,
          width: 327,
          height: 195,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 327,
                height: 177,
                decoration: BoxDecoration(
                  color: deepBlue,
                  borderRadius: BorderRadius.circular(14),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 34,
          left: 14,
          child: Image(
            image: AssetImage("assets/images/lucaLogo.png"),
          ),
        ),
        Positioned(
          top: 123,
          left: 14,
          child: Container(
            margin: EdgeInsets.all(5),
            width: 128,
            height: 46,
            decoration: BoxDecoration(
              border: Border.all(color: lightBlue),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.cast, size: 12, color: Colors.white,),
                TextButton(
                onPressed: () {},
                 child: Text(
                   "Watch Now", 
                    style: TextStyle(
                     color: Colors.white, 
                     fontSize: 12,
                     fontFamily: 'Play-Regular'
                    )
                  )
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 118,
          child: Image(
            image: AssetImage("assets/images/lucaChars.png"),
          ),
        ),
      ],
    );
  }
}




