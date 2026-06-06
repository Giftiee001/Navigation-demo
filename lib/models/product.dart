import 'package:flutter/material.dart';

/// A single Rwandan food item shown in the app.
///
/// This is the shared contract: the list screen, the card widget, and the
/// detail screen all depend on this class. Built first so everyone else can
/// work in parallel against it.
class Product {
  final String name;
  final String description;
  final int price; // in Rwandan francs (RWF)
  final Color color; // colour of the list block / detail hero
  final int rating; // number of filled stars, 0..5

  const Product({
    required this.name,
    required this.description,
    required this.price,
    required this.color,
    required this.rating,
  });
}

/// The five food items displayed on the home page.
const List<Product> products = [
  Product(
    name: 'Brochette',
    description: 'Grilled goat-meat skewers, a Rwandan street classic.',
    price: 1500,
    color: Color(0xFF8D6E63), // brown
    rating: 5,
  ),
  Product(
    name: 'Isombe',
    description: 'Cassava leaves stewed with eggplant and spinach.',
    price: 2000,
    color: Color(0xFF66BB6A), // green
    rating: 4,
  ),
  Product(
    name: 'Ubugali',
    description: 'Cassava and maize staple, served with a rich sauce.',
    price: 1000,
    color: Color(0xFFFFB300), // amber
    rating: 3,
  ),
  Product(
    name: 'Ibitoke',
    description: 'Steamed green plantains (matoke), soft and filling.',
    price: 1800,
    color: Color(0xFF26A69A), // teal
    rating: 4,
  ),
  Product(
    name: 'Sambaza',
    description: 'Crispy fried small fish fresh from Lake Kivu.',
    price: 2500,
    color: Color(0xFF42A5F5), // blue
    rating: 5,
  ),
];
