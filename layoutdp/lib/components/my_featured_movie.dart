import 'package:flutter/material.dart';

import '../../constant.dart';

class MyFeaturedMovie extends StatelessWidget {

  const MyFeaturedMovie({
    Key? key,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
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
            child: Stack(
              children: [
                Positioned(
                  top: 20,
                  left: 10,
                  child: Image(
                    image: AssetImage("assets/images/lucaLogo.png"),
                    width: 83,
                    height: 63,
                  ),
                ),
                Positioned(
                  top: 100,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    width: 128,
                    height: 46,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF11FFFF)),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.cast, size: 12, color: Colors.white,),
                        TextButton(onPressed: () {}, child: Text("Watch Now", style: TextStyle(color: Colors.white,))),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 120,
                  child: Image(
                    image: AssetImage("assets/images/lucaChars.png"),
                    width: 203,
                    height: 195,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}





