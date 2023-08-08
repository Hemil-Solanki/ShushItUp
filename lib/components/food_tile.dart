import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  const FoodTile({
    super.key,
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(left: 25),
      padding: const EdgeInsets.all (25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // IMAGE
          Image.asset(
            food.imagePath,
            height: 140,
          ),
          const SizedBox(height: 30),

          // TEXT
          Text(
            food.name,
            style: GoogleFonts.dmSerifDisplay(
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),

          // PRICE + RATING
          SizedBox(
            width: 160,
            child: Row(
                mainAxisAlignment: MainAxisAlignment. spaceBetween,
              children: [
                // PRICE
                Text(
                    'Rs ' +food.price,
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey [700],
                  ),
                ),

                // RATING
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                    ),
                    Text(
                      food.rating,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
