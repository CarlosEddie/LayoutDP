import 'package:flutter/material.dart';

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
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
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
                  Container(
                    width: 48,
                    height: 49,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      border: Border.all(color: deepBlue),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: (
                      Icon(
                        Icons.favorite_border,
                        color: deepBlue,
                      )
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              width: 327,
              height: 195,
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
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
                        Container(
                          width: 101,
                          height: 63,
                          decoration: BoxDecoration(
                            border: Border.all(color: deepBlue),
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: AssetImage("assets/images/perfil.png"),
                              fit: BoxFit.fill
                            ),
                          ),
                        ),
                        Container(
                           width: 101,
                          height: 63,
                          decoration: BoxDecoration(
                            border: Border.all(color: deepBlue),
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: AssetImage("assets/images/perfil.png"),
                              fit: BoxFit.fill
                            ),
                          ),
                        ),
                        Container(
                           width: 101,
                          height: 63,
                          decoration: BoxDecoration(
                            border: Border.all(color: deepBlue),
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: AssetImage("assets/images/perfil.png"),
                              fit: BoxFit.fill
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
