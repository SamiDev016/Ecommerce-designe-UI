import 'package:flutter/material.dart';
import 'package:to_learn_app_yt/components/my_drawer.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Shop Page",style: TextStyle(color: Colors.white),),
        elevation: 20,
        centerTitle: true,
      ),
      drawer: MyDrawer(),
    );
  }
}