import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shushitup/components/button.dart';
import 'package:shushitup/models/shop.dart';
import 'package:shushitup/themes/colors.dart';

import '../models/food.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  // REMOVE FROM CART
  void removeFromCart(Food food, BuildContext context) {
    // GET ACCESS TO SHOP
    final shop = context.read();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        // backgroundColor: secondaryColor,

        // APPBAR
        appBar: AppBar(
          foregroundColor: primaryColor,
          title: const Text(
            "CART",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          // backgroundColor: secondaryColor,
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            // CUSTOMER CART
            Expanded(
              child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  // GET FOOD FROM CART
                  final Food food = value.cart[index];

                  // GET FOOD NAME
                  final String foodName = food.name;

                  // GET FOOD PRICE
                  final String foodPrice = food.price;

                  // RETURN LIST TILE
                  return Container(
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: ListTile(
                      title: Text(
                        foodName,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        foodPrice,
                        style: const TextStyle(color: Colors.white),
                      ),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.black45,
                        ),
                        onPressed: () => removeFromCart(food, context),
                      ),
                    ),
                  );
                },
              ),
            ),

            // PAY BUTTON
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: MyButton(
                  text: "Pay Now",
                  onTap: () {}
              ),
            ),
          ],
        ),
      ),
    );
  }
}
