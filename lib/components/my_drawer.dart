import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_learn_app_yt/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //logo
              DrawerHeader(
                child: Center(
                  child: Icon(
                    CupertinoIcons.shopping_cart,
                    size: 73,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
              //shop tile

              const SizedBox(
                height: 25,
              ),

              MyListTile(
                icon: CupertinoIcons.home,
                text: "Shop",
                onTap: () => Navigator.of(context).pop(),
              ),
              //cart tile
              MyListTile(
                icon: Icons.shopping_cart_outlined,
                text: "Cart",
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("cart_page");
                },
              ),
            ],
          ),

          //exit shop tile
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: MyListTile(
              icon: Icons.close,
              text: "Exit",
              onTap: () => Navigator.pushNamedAndRemoveUntil(context, "/intro_page", (route) => false),
            ),
          ),
        ],
      ),
    );
  }
}
