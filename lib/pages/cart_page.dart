import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Cart Page",style: TextStyle(color: Colors.white),),
        elevation: 20,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      
    );
  }
}