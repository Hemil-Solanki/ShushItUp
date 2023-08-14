import 'package:flutter/material.dart';
import 'food.dart';
// import 'package:flutter/cupertino.dart';


class Shop extends ChangeNotifier{

  // FOOD MENU LIST
  final List<Food> _foodMenu = [
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

  // CUSTOMER CART
  List<Food> _cart = [];

  // GETTER METHOD
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  // ADD TO CART
  void addToCart(Food foodItem, int quantity){
    for (int i = 0; 1 < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  // REMOVE FROM CART
  void removeFromCart (Food food) {
    _cart.remove(food);
    notifyListeners();
  }

}