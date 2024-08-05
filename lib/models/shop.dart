import 'package:flutter/material.dart';
import 'package:to_learn_app_yt/models/product.dart';

class Shop extends ChangeNotifier{
  //product for sale

  final List<Product> _shop = [
    Product(
      name: "Earpods",
      decs: "Samsung earpods best quality and best price in the world",
      imagePath: "assets/earpods.jpg",
      price: 3500,
    ),
    Product(
      name: "Realme 9i",
      decs: "Best phone with low price like always",
      imagePath: "assets/realme9i.jpg",
      price: 46000,
    ),
    Product(
      name: "Bottle of Water",
      decs: "You want water to drink , iknow you don't have water in ur country so TAKE IT OR LEAVE IT",
      imagePath: "assets/water.jpg",
      price: 210,
    ),
    Product(
      name: "Phone case",
      decs: "Hell yeah the best phone case on the world",
      imagePath: "assets/phonecase.jpg",
      price: 750,
    ),
  ];

  //user cart
  List <Product> _cart =[];
  //get product list

  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart =>_cart;

  //add item to cart
  void addProductToCart(Product item){
    _cart.add(item);
    notifyListeners();
  }


  //remove item from cart
  void removeProductFromCart(Product item){
    _cart.remove(item);
    notifyListeners();
  }
}
