import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/material.dart';


class CoffeeShop extends ChangeNotifier{

  //coffee for sale list
  final List<Coffee> _shop =[

  //black coffee
  Coffee( 
    name: 'Long Black',
    price: "10.4",
    imagePath: "lab/images/black.png",
    ),


  //lattel 
  Coffee( 
    name: 'Lattel',
    price:"11.10",
    imagePath: "lab/images/lattel.png",
    ),


  //espresser
  Coffee( 
    name: 'Espresser',
    price: "12.10",
    imagePath: "lab/images/espresser.png",
    ),


  //iced coffee
  Coffee( 
    name: 'Iced coffee',
    price: "13.10",
    imagePath: "lab/images/iced_coffee.png",
    ),
  ];

  //user cart
  List<Coffee>_userCart = [];

  //get coffee list
   List<Coffee> get coffeShop => _shop;

  //get user list
   List<Coffee> get userCart => _userCart;


  //add item to cart
 void addItemToCart(Coffee coffee){
  _userCart.add(coffee);
  notifyListeners();
 }

  //remove item from cart
 void removeItemFromCart(Coffee coffee){
  _userCart.remove(coffee);
 }
}

 