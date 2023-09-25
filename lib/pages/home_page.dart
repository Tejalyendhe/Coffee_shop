import 'package:coffee_shop/components/bottom_nav_bar.dart';
import 'package:coffee_shop/const.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex=0;
  void navigateBottonBar(int index){
    setState(() {
    _selectedIndex=index;
  });
  }

  //pages
  final List<Widget> _pages = [
//shop pages
  ShopPage(),

//cart page
  CartPage(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottonBar(index),
      ),
      body:  _pages[_selectedIndex],
    );
  }
}