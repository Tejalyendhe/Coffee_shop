import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:const EdgeInsets.all(25.0),
      child: Column(
        children: [
          Text("How would you like your coffee?",
          style: TextStyle(fontSize: 20),
          ),

          const SizedBox(height: 25),

// list of coffee to buy
         
         Expanded(
          child: ListView.builder(
            itemCount: value.coffeShop.length,  
            itemBuilder: (context, index){

//individual coffee
           
            Coffee eachCoffee = value.coffee_shop[index];
//return the tiles for this coffee

            return ListTile(
              title: Text(eachCoffee.name),
            );

          }),
          ),
        ],
      ),
      ),
    );
  }
}