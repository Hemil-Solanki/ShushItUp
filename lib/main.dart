import 'package:flutter/material.dart';
import 'pages/intro_page.dart';
import 'pages/menu_page.dart';

void main() {
  runApp(const MyApp ());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,

    // GETTING STARTED PAGE..
    home: IntroPage(),
    routes: {
    '/intropage':(context) => IntroPage(),
    '/menupage':(context) => MenuPage(),
      },
    );
  }
}
