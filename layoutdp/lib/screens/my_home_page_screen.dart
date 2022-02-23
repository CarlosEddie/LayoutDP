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
                      image: DecorationImage(
                        image: AssetImage("assets/images/perfil.png"),
                        fit: BoxFit.fill
                      ),
                    ),
                  ),
                  Image(
                    image: AssetImage("assets/images/dpLogo.png"),
                    width: 77.59,
                    height: 41.0,
                  ),
                  MyCustomIconButton(
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
                ],
              ),
            ),
            MyFeaturedMovie(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Brand',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                        ),
                        TextButton(onPressed: () {}, child: const Text('See All'))
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyBrandButton(image: "assets/images/disneyBrand.png", background: Colors.white),
                        MyBrandButton(image: "assets/images/pixarBrand.png", background: Colors.white),
                        MyBrandButton(image: "assets/images/marvelBrand.png", background: Colors.white),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Text(
                                'New ',
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                ),
                              ),
                              Image(
                                image: AssetImage("assets/images/dpLogo.png"),
                                width: 48.0,
                                height: 25.37,
                              ),
                            ],
                          ),
                        ),
                        TextButton(onPressed: () {}, child: const Text('See All'))
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
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
                            image: "assets/images/legoStarWars.png", 
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
                          icon: Icon(
                            Icons.airplay,
                            color: deepBlue,
                          )
                        ),
                        IconButton(
                          onPressed: () {}, 
                          icon: Icon(
                            Icons.search,
                            color: deepBlue,
                          )
                        ),
                        IconButton(
                          onPressed: () {}, 
                          icon: Icon(
                            Icons.notifications_none,
                            color: deepBlue,
                          )
                        ),
                        IconButton(
                          onPressed: () {}, 
                          icon: Icon(
                            Icons.widgets_outlined,
                            color: deepBlue,
                          )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
