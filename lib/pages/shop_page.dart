import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_learn_app_yt/components/my_drawer.dart';
import 'package:to_learn_app_yt/components/my_product_tile.dart';
import 'package:to_learn_app_yt/models/shop.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Shop Page",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 20,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      drawer: const MyDrawer(),
      body: SizedBox(
        height: 500,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(15),
          itemCount: products.length,
          itemBuilder: (context,index){
            final product = products[index];
            return MyProductTile(product: product);
          },
        ),
      ),
    );
  }
}
