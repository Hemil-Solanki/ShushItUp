import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shushitup/components/button.dart';
import 'package:shushitup/themes/colors.dart';
import 'package:shushitup/models/food.dart';
import '../components/food_tile.dart';
import 'food_details_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // FOOD MENU LIST
  List foodMenu = [
    // SALMON SUSHI
    Food(
      name: "Salmon Sushi",
      price: "210",
      imagePath: "assets/sushi-5.png",
      rating: "4.9",
    ),

    // CAVIAR
    Food(
      name: "Caviar",
      price: "390",
      imagePath: "assets/caviar.png",
      rating: "5.0",
    ),

    // TUNA
    Food(
      name: "Tuna",
      price: "250",
      imagePath: "assets/sushi.png",
      rating: "3.0",
    ),

    // HERRING
    Food(
      name: "Herring",
      price: "190",
      imagePath: "assets/herring.png",
      rating: "4.1",
    ),
  ];

  // NAVIGATE TO FOOD ITEM DETAIL PAGE
  void navigateToFoodDetails(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodDetailsPage(
          food: foodMenu[index],
        ),
      ),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu_rounded,
          color: Colors.grey[900],
        ),

        // TITLE
        title: Text(
          'WHAT\'S ON YOUR MIND?',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey[900],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // PROMO BANNER
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25), // ios
            // margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 40,), // ios
            // padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // PROMO MESSAGE
                    Text(
                        'Get 32% Promo',
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 20,),

                    // REDEEM BUTTON
                    MyButton(
                      text: "Redeem",
                      onTap: () {},
                    ),
                  ],
                ),

                // IMAGE
                Image.asset(
                  'assets/sushi-2.png',
                  height: 100,
                ),
              ],
            ),
          ),
          const SizedBox(height: 25,), //ios
          // const SizedBox(height: 15,),

          // SEARCH BAR
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "Search here..",
                hintStyle: GoogleFonts.dmSerifDisplay(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 25,), //--ios
          // const SizedBox(height: 15,),

          // MENU LIST
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25,),
            // MENU TITLE
            child: Text(
              'Food Menu',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 30,), //--ios
          // const SizedBox(height: 10,),

          // SCROLL VIEW MENU - PRESSABLE (ON-TAP)
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
                food:  foodMenu[index],
                onTap: () => navigateToFoodDetails(index),
              ),
            ),
          ),
          const SizedBox(height: 35,), //--ios
          // const SizedBox(height: 10,),

          // POPULAR FOOD
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 35,), //--ios
            // margin: const EdgeInsets.only(left: 25, right: 25, bottom: 15,),
            padding: const EdgeInsets.all(25), //--ios
            // padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // IMAGE
                    Image.asset(
                      'assets/sushi-4.png',
                      height: 60,
                    ),
                    const SizedBox(width: 20),

                    // NAME & PRICE
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // NAME
                        Text(
                          "Salmon Eggs",
                          style: GoogleFonts.dmSerifDisplay(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 10,),

                        // PRICE
                        Text(
                          "Rs 200",
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                // ICON HEART
                const Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                  size: 28,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
