import 'package:flutter/material.dart';
import 'package:to_learn_app_yt/models/product.dart';

class MyProductTile extends StatelessWidget {
  const MyProductTile({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(25)
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          //product image
          const Icon(Icons.home_repair_service),

          //product name
          Text(product.name),

          //product description
          Text(product.decs),

          //product price+ add to cart button
          Text(product.price.toStringAsFixed(2))
        ],
      ),
    );
  }
}