import 'package:flutter/material.dart';
import 'package:layoutdp/screens/my_home_page_screen.dart';
import 'package:layoutdp/screens/my_login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Drink Water",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const MyLoginScreen(),
        '/myHomePageScreen': (context) => const MyHomePageScreen(),
      },
    );
  }
}
