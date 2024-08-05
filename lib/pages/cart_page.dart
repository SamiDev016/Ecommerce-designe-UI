import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_learn_app_yt/components/my_button.dart';
import 'package:to_learn_app_yt/components/my_product_tile.dart';
import 'package:to_learn_app_yt/models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void payButton(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text("PAYMENT YESSSSSSSSSSSSS"),
        contentTextStyle: TextStyle(
          color: Colors.white,
        ),
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Close"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Pay"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final carts = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Cart Page",
          style: TextStyle(color: Colors.white),
        ),
        elevation: 20,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          carts.isEmpty
              ? Center(child: Text("OK",style: TextStyle(fontSize: 30),))
              : Expanded(
                  child: ListView.builder(
                    itemCount: carts.length,
                    itemBuilder: (context, index) {
                      final cart = carts[index];
                      return ListTile(
                        title: Text(cart.name),
                        subtitle: Text(cart.price.toStringAsFixed(2)),
                        trailing: IconButton(
                          onPressed: () {
                            context.read<Shop>().removeProductFromCart(cart);
                          },
                          icon: const Icon(CupertinoIcons.trash),
                        ),
                      );
                    },
                  ),
                ),
                carts.isEmpty ? Text("") : MyButton(
            onTap: () => payButton(context),
            child: Text("Pay Now"),
          )
        ],
      ),
    );
  }
}
