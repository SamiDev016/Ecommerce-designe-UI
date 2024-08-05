import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:to_learn_app_yt/components/my_button.dart';

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
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),

            //subtitle
            Text(
              "Best Quality Products",
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).colorScheme.inversePrimary
              ),
            ),

            const SizedBox(height: 20,),

            //button
            MyButton(
              onTap: () => Navigator.of(context).pushNamed("shop_page"),
              child: const Icon(CupertinoIcons.arrow_right_square),
            )
          ],
        ),
      ),
    );
  }
}
