import 'package:flutter/material.dart';
import 'package:to_learn_app_yt/pages/intro_page.dart';
import 'package:to_learn_app_yt/pages/shop_page.dart';
import 'package:to_learn_app_yt/theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      routes: {
        "/intro_page":(context) => const IntroPage(),
        "shop_page":(context) => const ShopPage(),
      },
      home: const IntroPage(),
    );
  }
}