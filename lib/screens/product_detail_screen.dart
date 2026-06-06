import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_card.dart'; // reuse RatingStars

/// The details page for one food item.
///
/// Shows a large coloured hero with the name, then the name, description,
/// price, and rating stars centred below. The AppBar back arrow and the
/// device back button both return to the home page automatically, because
/// this screen was reached via Navigator.push.
class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: SingleChildScrollView(
        child: Column(
        children: [
          // Large coloured hero block, like the slide's big "pixel 1".
          Container(
            height: 220,
            width: double.infinity,
            color: product.color,
            alignment: Alignment.center,
            child: Text(
              product.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            product.name,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              product.description,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'Price: ${product.price} RWF',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 16),
          RatingStars(rating: product.rating, size: 26),
          const SizedBox(height: 24),
        ],
        ),
      ),
    );
  }
}
