import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shushitup/components/button.dart';
import 'package:shushitup/themes/colors.dart';
import '../models/food.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;
  const FoodDetailsPage({
    super.key,
    required this.food,
  });

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {

  // QUANTITY
  int quantityCount = 0;

  // DECREMENT QUANTITY
  void decrementQuantity() {
      setState(() {
        if (quantityCount > 0) {
          quantityCount--;
        }
      });
  }

  // INCREMENT QUANTITY
  void incrementQuantity() {
    setState(() {
      quantityCount++;
    });
  }

  // ADD TO CART
  void addToCart() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
        title: Text(
          widget.food.name,
          style: GoogleFonts.dmSerifDisplay(
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        children: [
          // LIST VIEW OF FOOD DETAILS
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView(
                children: [
                  // IMAGE
                  Image.asset(
                    widget.food.imagePath,
                    height: 200,
                  ),
                  const SizedBox(height: 25,),

                  // RATING
                  Row(
                    children: [
                      // STAR ICON
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),
                      const SizedBox(height: 5,),

                      // RATING NUMBER
                      Text(
                        widget.food.rating,
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),

                  // FOOD NAME
                  Text(
                    "Best in Town",
                    style: GoogleFonts.dmSerifDisplay(
                      fontSize: 24,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 25,),

                  // DESCRIPTION
                  Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 10,),

                  Text("Gently sliced, the pristine freshness of Atlantic salmon graces a cushion of meticulously seasoned SUSHI rice, a true masterpiece that marries art and taste. Delight in the opulence of our finest CAVIAR, each glistening pearl a testament to luxury and refinement. Explore the robust flavors of TUNA, from the rich marbling of Otoro to the boldness of Maguro, a culinary dance of power and grace. And don't miss the Nordic allure of HERRING, whether marinated, smoked, or pickled, each bite offers a journey into cultural flavors.",
                  //ADDED LATER:  Indulge in this quartet of sea-inspired wonders, a symphony where the ocean's bounty takes center stage on your plate.
                    style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                    height: 2,
                  ),
                  ),
                ],
              ),
            ),
          ),

          // PRICE + QUANTITY + ADD TO CART BUTTON
          Container(
            color: primaryColor,
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                // PRICE + QUANTITY
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // PRICE
                    Text(
                      "Rs ${widget.food.price}",
                      // "Rs " + widget.food.price,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),

                    // QUANTITY
                    Row(
                      children: [
                        // MINUS BUTTON
                        Container(
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                            onPressed: decrementQuantity,
                          ),
                        ),

                        // QUANTITY COUNT
                        SizedBox(
                          width: 40,
                          child: Center(
                            child: Text(
                              quantityCount.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),

                        // PLUS BUTTON
                        Container(
                          decoration: BoxDecoration(
                            color: secondaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            onPressed: incrementQuantity,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20,),

                // ADD TO CART BUTTON
                MyButton(text: "Add to Cart", onTap: addToCart),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
