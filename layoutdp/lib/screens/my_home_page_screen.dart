import 'package:flutter/material.dart';
import 'package:layoutdp/components/my_brand_button.dart';
import 'package:layoutdp/components/my_custom_icon_button.dart';
import 'package:layoutdp/components/my_featured_movie.dart';
import 'package:layoutdp/components/my_new_movie.dart';

import '../constant.dart';

class MyHomePageScreen extends StatefulWidget {
  const MyHomePageScreen({Key? key}) : super(key: key);

  @override
  State<MyHomePageScreen> createState() => _MyHomePageScreenState();
}

class _MyHomePageScreenState extends State<MyHomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      border: Border.all(color: deepBlue),
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/perfil.png"),
                        fit: BoxFit.fill
                      ),
                    ),
                  ),
                  const Image(
                    image: AssetImage("assets/images/dpLogo.png"),
                    width: 77.59,
                    height: 41.0,
                  ),
                  Stack(
                    children: [
                      const MyCustomIconButton(
                        width: 48,
                        height: 49,
                        icon: Icon (
                          Icons.favorite_border,
                          color: deepBlue,
                        ), 
                        background: backgroundColor, 
                        borderColor: deepBlue, 
                        radius: 16,
                      ),
                      Positioned(
                        child: Container(
                          width: 10.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                            color: notificationRed,
                            border: Border.all(color: deepBlue),
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 1.5,
                        left: 3,
                        child: Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 6,
                            fontFamily: 'Sora-ExtraLight',
                            fontWeight: FontWeight.w200
                          ),
                        ), 
                      )
                    ],
                  ),
                ],
              ),
            ),
            const MyFeaturedMovie(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0,),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 5.0,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Brand',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Play-Regular',
                            fontWeight: FontWeight.w400
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'See All',
                            style: TextStyle(
                              color: deepBlue,
                              fontSize: 14,
                              fontFamily: 'Play-Regular',
                              fontWeight: FontWeight.w400
                            ),
                          )
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      MyBrandButton(image: "assets/images/disneyBrand.png", background: Colors.white),
                      MyBrandButton(image: "assets/images/pixarBrand.png", background: Colors.white),
                      MyBrandButton(image: "assets/images/marvelBrand.png", background: Colors.white),
                    ],
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text(
                            'New ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Play-Regular',
                              fontWeight: FontWeight.w400
                            ),
                          ),
                          Image(
                            image: AssetImage("assets/images/dpLogo.png"),
                            width: 48.0,
                            height: 25.37,
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'See All',
                          style: TextStyle(
                            color: deepBlue,
                            fontSize: 14,
                            fontFamily: 'Play-Regular',
                            fontWeight: FontWeight.w400
                          ),
                        )
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(7.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        MyNewMovie(
                          image: "assets/images/legoStarWars.png", 
                          title: "Lego Star Wars Terrifying Tal", 
                          time: "1 hour", 
                          rating: "9.5"
                        ),
                        MyNewMovie(
                          image: "assets/images/jungleCruise.png", 
                          title: "Jungle Cruise", 
                          time: "1 hour", 
                          rating: "9.5"
                        ),
                        MyNewMovie(
                          image: "assets/images/legoStarWars.png", 
                          title: "Lego Star Wars Terrifying Tal", 
                          time: "1 hour", 
                          rating: "9.5"
                        ),
                        MyNewMovie(
                          image: "assets/images/jungleCruise.png", 
                          title: "Jungle Cruise", 
                          time: "1 hour", 
                          rating: "9.5"
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 327,
                  height: 68,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    color: Colors.white, 
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {}, 
                        icon: const Icon(
                          Icons.airplay,
                          color: deepBlue,
                        )
                      ),
                      IconButton(
                        onPressed: () {}, 
                        icon: const Icon(
                          Icons.search,
                          color: deepBlue,
                        )
                      ),
                      IconButton(
                        onPressed: () {}, 
                        icon: const Icon(
                          Icons.notifications_none,
                          color: deepBlue,
                        )
                      ),
                      IconButton(
                        onPressed: () {}, 
                        icon: const Icon(
                          Icons.widgets_outlined,
                          color: deepBlue,
                        )
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
