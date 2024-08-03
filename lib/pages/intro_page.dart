import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _HomePageState();
}

class _HomePageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            FaIcon(
              CupertinoIcons.shopping_cart,
              size: 73,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(
              height: 25,
            ),
            //title
            const Text(
              "Best Shopping",
            ),

            //subtitle
            const Text(
              "Best Quality Products",
            ),

            //button
          ],
        ),
      ),
    );
  }
}
